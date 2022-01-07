
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int id; } ;


 int ARRAY_SIZE (int*) ;
 int MUX_PGP_USB_SUSPEND ;
 int MX31_PIN_CSPI1_MISO ;
 int MX31_PIN_CSPI1_MISO__USBH1_RXDP ;
 int MX31_PIN_CSPI1_MOSI ;
 int MX31_PIN_CSPI1_MOSI__USBH1_RXDM ;
 int MX31_PIN_CSPI1_SCLK ;
 int MX31_PIN_CSPI1_SCLK__USBH1_OEB ;
 int MX31_PIN_CSPI1_SPI_RDY ;
 int MX31_PIN_CSPI1_SPI_RDY__USBH1_FS ;
 int MX31_PIN_CSPI1_SS0 ;
 int MX31_PIN_CSPI1_SS0__USBH1_TXDM ;
 int MX31_PIN_CSPI1_SS1 ;
 int MX31_PIN_CSPI1_SS1__USBH1_TXDP ;
 int MX31_PIN_CSPI1_SS2 ;
 int MX31_PIN_CSPI1_SS2__USBH1_RCV ;
 int MXC_EHCI_INTERFACE_SINGLE_UNI ;
 int MXC_EHCI_POWER_PINS_ENABLED ;
 int USB_PAD_CFG ;
 int mdelay (int) ;
 int mx31_initialize_usb_hw (int ,int) ;
 int mxc_iomux_set_gpr (int ,int) ;
 int mxc_iomux_set_pad (int ,int ) ;
 int mxc_iomux_setup_multiple_pins (int*,int ,char*) ;

__attribute__((used)) static int usbh1_init(struct platform_device *pdev)
{
 int pins[] = {
  MX31_PIN_CSPI1_MOSI__USBH1_RXDM,
  MX31_PIN_CSPI1_MISO__USBH1_RXDP,
  MX31_PIN_CSPI1_SS0__USBH1_TXDM,
  MX31_PIN_CSPI1_SS1__USBH1_TXDP,
  MX31_PIN_CSPI1_SS2__USBH1_RCV,
  MX31_PIN_CSPI1_SCLK__USBH1_OEB,
  MX31_PIN_CSPI1_SPI_RDY__USBH1_FS,
 };

 mxc_iomux_setup_multiple_pins(pins, ARRAY_SIZE(pins), "USB H1");

 mxc_iomux_set_pad(MX31_PIN_CSPI1_MOSI, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_CSPI1_MISO, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_CSPI1_SS0, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_CSPI1_SS1, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_CSPI1_SS2, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_CSPI1_SCLK, USB_PAD_CFG);
 mxc_iomux_set_pad(MX31_PIN_CSPI1_SPI_RDY, USB_PAD_CFG);

 mxc_iomux_set_gpr(MUX_PGP_USB_SUSPEND, 1);

 mdelay(10);

 return mx31_initialize_usb_hw(pdev->id, MXC_EHCI_POWER_PINS_ENABLED |
   MXC_EHCI_INTERFACE_SINGLE_UNI);
}
