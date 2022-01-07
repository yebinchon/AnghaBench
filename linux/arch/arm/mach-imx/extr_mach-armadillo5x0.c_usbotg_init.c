
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int id; } ;


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
 int MXC_EHCI_INTERFACE_DIFF_UNI ;
 int MXC_EHCI_POWER_PINS_ENABLED ;
 int OTG_RESET ;
 int USB_PAD_CFG ;
 int gpio_direction_output (int ,int) ;
 int gpio_free (int ) ;
 int gpio_request (int ,char*) ;
 int gpio_set_value (int ,int) ;
 int mdelay (int) ;
 int mx31_initialize_usb_hw (int ,int) ;
 int mxc_iomux_set_pad (int ,int ) ;
 int pr_err (char*) ;

__attribute__((used)) static int usbotg_init(struct platform_device *pdev)
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



 err = gpio_request(OTG_RESET, "USB-OTG-RESET");
 if (err) {
  pr_err("Failed to request the usb otg reset gpio\n");
  return err;
 }

 err = gpio_direction_output(OTG_RESET, 1 );
 if (err) {
  pr_err("Failed to reset the usb otg phy\n");
  goto otg_free_reset;
 }

 gpio_set_value(OTG_RESET, 0 );
 mdelay(5);
 gpio_set_value(OTG_RESET, 1 );
 mdelay(10);

 return mx31_initialize_usb_hw(pdev->id, MXC_EHCI_POWER_PINS_ENABLED |
   MXC_EHCI_INTERFACE_DIFF_UNI);

otg_free_reset:
 gpio_free(OTG_RESET);
 return err;
}
