
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MUX_PGP_UH2 ;
 int MX31_PIN_SCK3 ;
 int MX31_PIN_SFS3 ;
 int MX31_PIN_SRXD3 ;
 int MX31_PIN_SRXD6 ;
 int MX31_PIN_STXD3 ;
 int MX31_PIN_STXD6 ;
 int MX31_PIN_USBH2_CLK ;
 int MX31_PIN_USBH2_DATA0 ;
 int MX31_PIN_USBH2_DATA1 ;
 int MX31_PIN_USBH2_DIR ;
 int MX31_PIN_USBH2_NXT ;
 int MX31_PIN_USBH2_STP ;
 int MX31_PIN_USBOTG_CLK ;
 int MX31_PIN_USBOTG_DATA0 ;
 int MX31_PIN_USBOTG_DATA1 ;
 int MX31_PIN_USBOTG_DATA2 ;
 int MX31_PIN_USBOTG_DATA3 ;
 int MX31_PIN_USBOTG_DATA4 ;
 int MX31_PIN_USBOTG_DATA5 ;
 int MX31_PIN_USBOTG_DATA6 ;
 int MX31_PIN_USBOTG_DATA7 ;
 int MX31_PIN_USBOTG_DIR ;
 int MX31_PIN_USBOTG_NXT ;
 int MX31_PIN_USBOTG_STP ;
 int OTG_EN_B ;
 int PAD_CTL_100K_PD ;
 int PAD_CTL_100K_PU ;
 int USBH2_EN_B ;
 int USB_PAD_CFG ;
 int USB_RESET_B ;
 int gpio_direction_output (int ,int ) ;
 int gpio_request (int ,char*) ;
 int gpio_set_value (int ,int) ;
 int mdelay (int) ;
 int mxc_iomux_set_gpr (int ,int) ;
 int mxc_iomux_set_pad (int ,int) ;

__attribute__((used)) static void usb_xcvr_reset(void)
{
 mxc_iomux_set_pad(MX31_PIN_USBOTG_DATA0, USB_PAD_CFG | PAD_CTL_100K_PD);
 mxc_iomux_set_pad(MX31_PIN_USBOTG_DATA1, USB_PAD_CFG | PAD_CTL_100K_PD);
 mxc_iomux_set_pad(MX31_PIN_USBOTG_DATA2, USB_PAD_CFG | PAD_CTL_100K_PD);
 mxc_iomux_set_pad(MX31_PIN_USBOTG_DATA3, USB_PAD_CFG | PAD_CTL_100K_PD);
 mxc_iomux_set_pad(MX31_PIN_USBOTG_DATA4, USB_PAD_CFG | PAD_CTL_100K_PD);
 mxc_iomux_set_pad(MX31_PIN_USBOTG_DATA5, USB_PAD_CFG | PAD_CTL_100K_PD);
 mxc_iomux_set_pad(MX31_PIN_USBOTG_DATA6, USB_PAD_CFG | PAD_CTL_100K_PD);
 mxc_iomux_set_pad(MX31_PIN_USBOTG_DATA7, USB_PAD_CFG | PAD_CTL_100K_PD);
 mxc_iomux_set_pad(MX31_PIN_USBOTG_CLK, USB_PAD_CFG | PAD_CTL_100K_PU);
 mxc_iomux_set_pad(MX31_PIN_USBOTG_DIR, USB_PAD_CFG | PAD_CTL_100K_PU);
 mxc_iomux_set_pad(MX31_PIN_USBOTG_NXT, USB_PAD_CFG | PAD_CTL_100K_PU);
 mxc_iomux_set_pad(MX31_PIN_USBOTG_STP, USB_PAD_CFG | PAD_CTL_100K_PU);

 mxc_iomux_set_gpr(MUX_PGP_UH2, 1);
 mxc_iomux_set_pad(MX31_PIN_USBH2_CLK, USB_PAD_CFG | PAD_CTL_100K_PU);
 mxc_iomux_set_pad(MX31_PIN_USBH2_DIR, USB_PAD_CFG | PAD_CTL_100K_PU);
 mxc_iomux_set_pad(MX31_PIN_USBH2_NXT, USB_PAD_CFG | PAD_CTL_100K_PU);
 mxc_iomux_set_pad(MX31_PIN_USBH2_STP, USB_PAD_CFG | PAD_CTL_100K_PU);
 mxc_iomux_set_pad(MX31_PIN_USBH2_DATA0, USB_PAD_CFG | PAD_CTL_100K_PD);
 mxc_iomux_set_pad(MX31_PIN_USBH2_DATA1, USB_PAD_CFG | PAD_CTL_100K_PD);
 mxc_iomux_set_pad(MX31_PIN_SRXD6, USB_PAD_CFG | PAD_CTL_100K_PD);
 mxc_iomux_set_pad(MX31_PIN_STXD6, USB_PAD_CFG | PAD_CTL_100K_PD);
 mxc_iomux_set_pad(MX31_PIN_SFS3, USB_PAD_CFG | PAD_CTL_100K_PD);
 mxc_iomux_set_pad(MX31_PIN_SCK3, USB_PAD_CFG | PAD_CTL_100K_PD);
 mxc_iomux_set_pad(MX31_PIN_SRXD3, USB_PAD_CFG | PAD_CTL_100K_PD);
 mxc_iomux_set_pad(MX31_PIN_STXD3, USB_PAD_CFG | PAD_CTL_100K_PD);

 gpio_request(OTG_EN_B, "usb-udc-en");
 gpio_direction_output(OTG_EN_B, 0);
 gpio_request(USBH2_EN_B, "usbh2-en");
 gpio_direction_output(USBH2_EN_B, 0);

 gpio_request(USB_RESET_B, "usb-reset");
 gpio_direction_output(USB_RESET_B, 0);
 mdelay(1);
 gpio_set_value(USB_RESET_B, 1);
 mdelay(1);
}
