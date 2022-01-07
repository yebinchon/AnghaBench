
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar934x_nfc {int ctrl_reg; } ;


 int AR934X_NFC_CTRL_CUSTOM_SIZE_EN ;
 int AR934X_NFC_CTRL_ECC_EN ;

__attribute__((used)) static inline void
ar934x_nfc_enable_hwecc(struct ar934x_nfc *nfc)
{
 nfc->ctrl_reg |= AR934X_NFC_CTRL_ECC_EN;
 nfc->ctrl_reg &= ~AR934X_NFC_CTRL_CUSTOM_SIZE_EN;
}
