
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PLLB_DIV_FRAC (int ) ;
 unsigned long PLLB_DIV_INT (int) ;
 int PLLB_ENSAT ;
 int PLLB_OUTDIV ;
 int PLLB_REFDIV ;
 unsigned long REF300_DIV_FRAC (int ) ;
 unsigned long REF300_DIV_INT (int) ;
 int SEC_CTRL_PLLB_CTRL0 ;
 int SEC_CTRL_PLLB_DIV_CTRL ;
 int SYS_CTRL_CLK_REF600 ;
 int SYS_CTRL_CLK_USBHS ;
 int SYS_CTRL_REF300_DIV ;
 int SYS_CTRL_RST_PLLB ;
 int SYS_CTRL_RST_USBHS ;
 int SYS_CTRL_RST_USBHSPHYA ;
 int SYS_CTRL_RST_USBHSPHYB ;
 int SYS_CTRL_USBHSPHY_CTRL ;
 int SYS_CTRL_USB_CTRL ;
 unsigned long USBHSPHY_TEST_ADD ;
 unsigned long USBHSPHY_TEST_CLK ;
 int USBHSPHY_TEST_DIN ;
 unsigned long USB_CLK_INTERNAL ;
 unsigned long USB_INT_CLK_PLLB ;
 unsigned long USB_INT_CLK_REF300 ;
 int enable_clock (int ) ;
 int reset_block (int ,int) ;
 int writel (unsigned long,int ) ;

__attribute__((used)) static int start_oxnas_usb_ehci(void)
{
 writel(REF300_DIV_INT(25) | REF300_DIV_FRAC(0), SYS_CTRL_REF300_DIV);



 reset_block(SYS_CTRL_RST_USBHS, 1);
 reset_block(SYS_CTRL_RST_USBHS, 0);

 reset_block(SYS_CTRL_RST_USBHSPHYA, 1);
 reset_block(SYS_CTRL_RST_USBHSPHYA, 0);

 reset_block(SYS_CTRL_RST_USBHSPHYB, 1);
 reset_block(SYS_CTRL_RST_USBHSPHYB, 0);



 writel((2UL << USBHSPHY_TEST_ADD) |
     (0xe0UL << USBHSPHY_TEST_DIN), SYS_CTRL_USBHSPHY_CTRL);

 writel((1UL << USBHSPHY_TEST_CLK) |
     (2UL << USBHSPHY_TEST_ADD) |
     (0xe0UL << USBHSPHY_TEST_DIN), SYS_CTRL_USBHSPHY_CTRL);

 writel((0xfUL << USBHSPHY_TEST_ADD) |
     (0xaaUL << USBHSPHY_TEST_DIN), SYS_CTRL_USBHSPHY_CTRL);

 writel((1UL << USBHSPHY_TEST_CLK) |
     (0xfUL << USBHSPHY_TEST_ADD) |
     (0xaaUL << USBHSPHY_TEST_DIN), SYS_CTRL_USBHSPHY_CTRL);




  writel(USB_CLK_INTERNAL | USB_INT_CLK_REF300, SYS_CTRL_USB_CTRL);


 enable_clock(SYS_CTRL_CLK_USBHS);

 return 0;
}
