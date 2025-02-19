
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
typedef int u32 ;


 int BIT (int ) ;
 scalar_t__ PINMUX_ALTERNATIVE_SEL ;
 scalar_t__ PINMUX_DEBUG_SEL ;
 scalar_t__ PINMUX_PULLUP_SEL ;
 scalar_t__ PINMUX_QUATERNARY_SEL ;
 scalar_t__ PINMUX_SECONDARY_SEL ;
 scalar_t__ PINMUX_TERTIARY_SEL ;
 scalar_t__ SEC_CONTROL_BASE ;
 scalar_t__ SYS_CONTROL_BASE ;
 int SYS_CTRL_CLK_CIPHER ;
 scalar_t__ SYS_CTRL_CLK_CLR_CTRL ;
 int SYS_CTRL_CLK_COPRO ;
 int SYS_CTRL_CLK_DMA ;
 int SYS_CTRL_CLK_I2S ;
 int SYS_CTRL_CLK_MAC ;
 int SYS_CTRL_CLK_MACB ;
 int SYS_CTRL_CLK_PCIEA ;
 int SYS_CTRL_CLK_PCIEB ;
 int SYS_CTRL_CLK_REF600 ;
 int SYS_CTRL_CLK_SATA ;
 int SYS_CTRL_CLK_SD ;
 int SYS_CTRL_CLK_STATIC ;
 int SYS_CTRL_CLK_USBDEV ;
 int SYS_CTRL_CLK_USBHS ;
 int SYS_CTRL_RST_ARM0 ;
 int SYS_CTRL_RST_ARM1 ;
 int SYS_CTRL_RST_CIPHER ;
 scalar_t__ SYS_CTRL_RST_CLR_CTRL ;
 int SYS_CTRL_RST_COPRO ;
 int SYS_CTRL_RST_GPIO ;
 int SYS_CTRL_RST_I2S ;
 int SYS_CTRL_RST_MACA ;
 int SYS_CTRL_RST_MACB ;
 int SYS_CTRL_RST_MISC ;
 int SYS_CTRL_RST_PCIEA ;
 int SYS_CTRL_RST_PCIEB ;
 int SYS_CTRL_RST_PCIEPHY ;
 int SYS_CTRL_RST_SATA ;
 int SYS_CTRL_RST_SATA_LINK ;
 int SYS_CTRL_RST_SATA_PHY ;
 int SYS_CTRL_RST_SCU ;
 int SYS_CTRL_RST_SD ;
 scalar_t__ SYS_CTRL_RST_SET_CTRL ;
 int SYS_CTRL_RST_SGDMA ;
 int SYS_CTRL_RST_STATIC ;
 int SYS_CTRL_RST_UART1 ;
 int SYS_CTRL_RST_UART2 ;
 int SYS_CTRL_RST_USBDEV ;
 int SYS_CTRL_RST_USBHS ;
 int SYS_CTRL_RST_USBHSPHYA ;
 int SYS_CTRL_RST_USBHSPHYB ;
 int SYS_CTRL_RST_VIDEO ;
 int writel (int,scalar_t__) ;

void reset_cpu(ulong addr)
{
 u32 value;






 value =
  BIT(SYS_CTRL_RST_COPRO ) |
  BIT(SYS_CTRL_RST_USBHS ) |
  BIT(SYS_CTRL_RST_USBHSPHYA ) |
  BIT(SYS_CTRL_RST_MACA ) |
  BIT(SYS_CTRL_RST_PCIEA ) |
  BIT(SYS_CTRL_RST_SGDMA ) |
  BIT(SYS_CTRL_RST_CIPHER ) |
  BIT(SYS_CTRL_RST_SATA ) |
  BIT(SYS_CTRL_RST_SATA_LINK ) |
  BIT(SYS_CTRL_RST_SATA_PHY ) |
  BIT(SYS_CTRL_RST_PCIEPHY ) |
  BIT(SYS_CTRL_RST_STATIC ) |
  BIT(SYS_CTRL_RST_UART1 ) |
  BIT(SYS_CTRL_RST_UART2 ) |
  BIT(SYS_CTRL_RST_MISC ) |
  BIT(SYS_CTRL_RST_I2S ) |
  BIT(SYS_CTRL_RST_SD ) |
  BIT(SYS_CTRL_RST_MACB ) |
  BIT(SYS_CTRL_RST_PCIEB ) |
  BIT(SYS_CTRL_RST_VIDEO ) |
  BIT(SYS_CTRL_RST_USBHSPHYB ) |
  BIT(SYS_CTRL_RST_USBDEV );

 writel(value, SYS_CTRL_RST_SET_CTRL);


 writel(BIT(SYS_CTRL_RST_GPIO), SYS_CTRL_RST_CLR_CTRL);



 value =
  BIT(SYS_CTRL_CLK_COPRO) |
  BIT(SYS_CTRL_CLK_DMA) |
  BIT(SYS_CTRL_CLK_CIPHER) |
  BIT(SYS_CTRL_CLK_SD) |
  BIT(SYS_CTRL_CLK_SATA) |
  BIT(SYS_CTRL_CLK_I2S) |
  BIT(SYS_CTRL_CLK_USBHS) |
  BIT(SYS_CTRL_CLK_MAC) |
  BIT(SYS_CTRL_CLK_PCIEA) |
  BIT(SYS_CTRL_CLK_STATIC) |
  BIT(SYS_CTRL_CLK_MACB) |
  BIT(SYS_CTRL_CLK_PCIEB) |
  BIT(SYS_CTRL_CLK_REF600) |
  BIT(SYS_CTRL_CLK_USBDEV);

 writel(value, SYS_CTRL_CLK_CLR_CTRL);





 writel(0, SYS_CONTROL_BASE + PINMUX_SECONDARY_SEL);
 writel(0, SYS_CONTROL_BASE + PINMUX_TERTIARY_SEL);
 writel(0, SYS_CONTROL_BASE + PINMUX_QUATERNARY_SEL);
 writel(0, SYS_CONTROL_BASE + PINMUX_DEBUG_SEL);
 writel(0, SYS_CONTROL_BASE + PINMUX_ALTERNATIVE_SEL);
 writel(0, SYS_CONTROL_BASE + PINMUX_PULLUP_SEL);

 writel(0, SEC_CONTROL_BASE + PINMUX_SECONDARY_SEL);
 writel(0, SEC_CONTROL_BASE + PINMUX_TERTIARY_SEL);
 writel(0, SEC_CONTROL_BASE + PINMUX_QUATERNARY_SEL);
 writel(0, SEC_CONTROL_BASE + PINMUX_DEBUG_SEL);
 writel(0, SEC_CONTROL_BASE + PINMUX_ALTERNATIVE_SEL);
 writel(0, SEC_CONTROL_BASE + PINMUX_PULLUP_SEL);




 value =
  BIT(SYS_CTRL_RST_SCU) |
  BIT(SYS_CTRL_RST_ARM0) |
  BIT(SYS_CTRL_RST_ARM1);

 writel(value, SYS_CTRL_RST_SET_CTRL);
}
