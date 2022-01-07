
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int id; } ;


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
 int MXC_EHCI_INTERFACE_DIFF_UNI ;
 int MXC_EHCI_POWER_PINS_ENABLED ;
 int USBH2_CS ;
 int USBH2_RESET ;
 int USB_PAD_CFG ;
 int gpio_direction_output (int ,int) ;
 int gpio_free (int ) ;
 int gpio_request (int ,char*) ;
 int gpio_set_value (int ,int) ;
 int mdelay (int) ;
 int mx31_initialize_usb_hw (int ,int) ;
 int mxc_iomux_set_gpr (int ,int) ;
 int mxc_iomux_set_pad (int ,int ) ;
 int pr_err (char*) ;

__attribute__((used)) static int usbh2_init(struct platform_device *pdev)
{
 int err;

 mxc_iomux_set_pad(MX31_PIN_USBH2_CLK, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_USBH2_DIR, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_USBH2_NXT, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_USBH2_STP, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_USBH2_DATA0, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_USBH2_DATA1, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_SRXD6, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_STXD6, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_SFS3, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_SCK3, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_SRXD3, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_STXD3, USB_PAD_CFG);

 mxc_iomux_set_gpr(MUX_PGP_UH2, 1);



 err = gpio_request(USBH2_CS, "USB-H2-CS");
 if (err) {
  pr_err("Failed to request the usb host 2 CS gpio\n");
  return err;
 }

 err = gpio_direction_output(USBH2_CS, 0 );
 if (err) {
  pr_err("Failed to drive the usb host 2 CS gpio\n");
  goto h2_free_cs;
 }


 err = gpio_request(USBH2_RESET, "USB-H2-RESET");
 if (err) {
  pr_err("Failed to request the usb host 2 reset gpio\n");
  goto h2_free_cs;
 }

 err = gpio_direction_output(USBH2_RESET, 1 );
 if (err) {
  pr_err("Failed to reset the usb host 2 phy\n");
  goto h2_free_reset;
 }

 gpio_set_value(USBH2_RESET, 0 );
 mdelay(5);
 gpio_set_value(USBH2_RESET, 1 );
 mdelay(10);

 return mx31_initialize_usb_hw(pdev->id, MXC_EHCI_POWER_PINS_ENABLED |
   MXC_EHCI_INTERFACE_DIFF_UNI);

h2_free_reset:
 gpio_free(USBH2_RESET);
h2_free_cs:
 gpio_free(USBH2_CS);
 return err;
}
