
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ANADIG_USB1_CHRG_DETECT ;
 int ANADIG_USB2_CHRG_DETECT ;
 int BM_ANADIG_USB_CHRG_DETECT_CHK_CHRG_B ;
 int BM_ANADIG_USB_CHRG_DETECT_EN_B ;
 int anatop ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void imx_anatop_usb_chrg_detect_disable(void)
{
 regmap_write(anatop, ANADIG_USB1_CHRG_DETECT,
  BM_ANADIG_USB_CHRG_DETECT_EN_B
  | BM_ANADIG_USB_CHRG_DETECT_CHK_CHRG_B);
 regmap_write(anatop, ANADIG_USB2_CHRG_DETECT,
  BM_ANADIG_USB_CHRG_DETECT_EN_B |
  BM_ANADIG_USB_CHRG_DETECT_CHK_CHRG_B);
}
