
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int id; } ;


 int ARRAY_SIZE (int*) ;
 int IOMUX_CONFIG_GPIO ;
 int IOMUX_MODE (int ,int ) ;
 int IOMUX_TO_GPIO (int ) ;
 int MUX_PGP_UH2 ;
 int MX31_PIN_DTR_DCE1 ;
 int MX31_PIN_SCK3 ;
 int MX31_PIN_SFS3 ;
 int MX31_PIN_SRXD3 ;
 int MX31_PIN_SRXD6 ;
 int MX31_PIN_STXD3 ;
 int MX31_PIN_STXD6 ;
 int MX31_PIN_USBH2_CLK ;
 int MX31_PIN_USBH2_CLK__USBH2_CLK ;
 int MX31_PIN_USBH2_DATA0 ;
 int MX31_PIN_USBH2_DATA0__USBH2_DATA0 ;
 int MX31_PIN_USBH2_DATA1 ;
 int MX31_PIN_USBH2_DATA1__USBH2_DATA1 ;
 int MX31_PIN_USBH2_DIR ;
 int MX31_PIN_USBH2_DIR__USBH2_DIR ;
 int MX31_PIN_USBH2_NXT ;
 int MX31_PIN_USBH2_NXT__USBH2_NXT ;
 int MX31_PIN_USBH2_STP ;
 int MX31_PIN_USBH2_STP__USBH2_STP ;
 int MXC_EHCI_POWER_PINS_ENABLED ;
 int USB_PAD_CFG ;
 int gpio_direction_output (int ,int ) ;
 int gpio_request (int ,char*) ;
 int mdelay (int) ;
 int mx31_initialize_usb_hw (int ,int ) ;
 int mxc_iomux_alloc_pin (int ,char*) ;
 int mxc_iomux_set_gpr (int ,int) ;
 int mxc_iomux_set_pad (int ,int ) ;
 int mxc_iomux_setup_multiple_pins (int*,int ,char*) ;

__attribute__((used)) static int usbh2_init(struct platform_device *pdev)
{
 int pins[] = {
  MX31_PIN_USBH2_DATA0__USBH2_DATA0,
  MX31_PIN_USBH2_DATA1__USBH2_DATA1,
  MX31_PIN_USBH2_CLK__USBH2_CLK,
  MX31_PIN_USBH2_DIR__USBH2_DIR,
  MX31_PIN_USBH2_NXT__USBH2_NXT,
  MX31_PIN_USBH2_STP__USBH2_STP,
 };

 mxc_iomux_setup_multiple_pins(pins, ARRAY_SIZE(pins), "USB H2");

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


 mxc_iomux_alloc_pin(IOMUX_MODE(MX31_PIN_DTR_DCE1, IOMUX_CONFIG_GPIO),
    "USBH2_CS");
 gpio_request(IOMUX_TO_GPIO(MX31_PIN_DTR_DCE1), "USBH2 CS");
 gpio_direction_output(IOMUX_TO_GPIO(MX31_PIN_DTR_DCE1), 0);

 mdelay(10);

 return mx31_initialize_usb_hw(pdev->id, MXC_EHCI_POWER_PINS_ENABLED);
}
