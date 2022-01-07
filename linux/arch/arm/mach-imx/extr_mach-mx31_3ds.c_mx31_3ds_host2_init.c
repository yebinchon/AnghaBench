
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int id; } ;


 int MX31_PIN_IOIS16 ;
 int MX31_PIN_PC_BVD1 ;
 int MX31_PIN_PC_BVD2 ;
 int MX31_PIN_PC_RST ;
 int MX31_PIN_PC_RW_B ;
 int MX31_PIN_PC_VS2 ;
 int MX31_PIN_USBH2_CLK ;
 int MX31_PIN_USBH2_DATA0 ;
 int MX31_PIN_USBH2_DATA1 ;
 int MX31_PIN_USBH2_DIR ;
 int MX31_PIN_USBH2_NXT ;
 int MX31_PIN_USBH2_STP ;
 int MXC_EHCI_POWER_PINS_ENABLED ;
 int USBH2_RST_B ;
 int USB_PAD_CFG ;
 int gpio_direction_output (int ,int ) ;
 int gpio_free (int ) ;
 int gpio_request (int ,char*) ;
 int gpio_set_value (int ,int) ;
 int mdelay (int) ;
 int mx31_initialize_usb_hw (int ,int ) ;
 int mxc_iomux_set_pad (int ,int ) ;
 int pr_err (char*) ;

__attribute__((used)) static int mx31_3ds_host2_init(struct platform_device *pdev)
{
 int err;

 mxc_iomux_set_pad(MX31_PIN_USBH2_CLK, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_USBH2_DIR, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_USBH2_NXT, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_USBH2_STP, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_USBH2_DATA0, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_USBH2_DATA1, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_PC_VS2, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_PC_BVD1, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_PC_BVD2, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_PC_RST, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_IOIS16, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_PC_RW_B, USB_PAD_CFG);

 err = gpio_request(USBH2_RST_B, "usbh2-reset");
 if (err) {
  pr_err("Failed to request the USB Host 2 reset gpio\n");
  return err;
 }

 err = gpio_direction_output(USBH2_RST_B, 0);
 if (err) {
  pr_err("Failed to drive the USB Host 2 reset gpio\n");
  goto usbotg_free_reset;
 }

 mdelay(1);
 gpio_set_value(USBH2_RST_B, 1);

 mdelay(10);

 return mx31_initialize_usb_hw(pdev->id, MXC_EHCI_POWER_PINS_ENABLED);

usbotg_free_reset:
 gpio_free(USBH2_RST_B);
 return err;
}
