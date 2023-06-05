#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from P840F14 device
$(call inherit-product, device/turkcell/P840F14/device.mk)

PRODUCT_DEVICE := P840F14
PRODUCT_NAME := omni_P840F14
PRODUCT_BRAND := TURKCELL
PRODUCT_MODEL := TURKCELL T80
PRODUCT_MANUFACTURER := turkcell

PRODUCT_GMS_CLIENTID_BASE := android-turkcell

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="msm8937_64-user 7.1.1 NMF26F 20170609.160930 release-keys"

BUILD_FINGERPRINT := TURKCELL/P840F14_TR_TRCL/P840F14:7.1.1/NMF26F/20170609.160930:user/release-keys
