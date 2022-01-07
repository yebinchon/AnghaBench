
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
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
 int USBOTG_RST_B ;
 int USB_PAD_CFG ;
 int gpio_direction_output (int ,int ) ;
 int gpio_free (int ) ;
 int gpio_request (int ,char*) ;
 int gpio_set_value (int ,int) ;
 int mdelay (int) ;
 int mxc_iomux_set_pad (int ,int ) ;
 int pr_err (char*) ;

__attribute__((used)) static int mx31_3ds_usbotg_init(void)
{
 int err;

 mxc_iomux_set_pad(MX31_PIN_USBOTG_DATA0, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_USBOTG_DATA1, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_USBOTG_DATA2, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_USBOTG_DATA3, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_USBOTG_DATA4, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_USBOTG_DATA5, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_USBOTG_DATA6, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_USBOTG_DATA7, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_USBOTG_CLK, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_USBOTG_DIR, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_USBOTG_NXT, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_USBOTG_STP, USB_PAD_CFG);

 err = gpio_request(USBOTG_RST_B, "otgusb-reset");
 if (err) {
  pr_err("Failed to request the USB OTG reset gpio\n");
  return err;
 }

 err = gpio_direction_output(USBOTG_RST_B, 0);
 if (err) {
  pr_err("Failed to drive the USB OTG reset gpio\n");
  goto usbotg_free_reset;
 }

 mdelay(1);
 gpio_set_value(USBOTG_RST_B, 1);
 return 0;

usbotg_free_reset:
 gpio_free(USBOTG_RST_B);
 return err;
}
