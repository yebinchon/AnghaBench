
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int AM35XX_CONTROL_DEVCONF2 ;
 int CONF2_FORCE_DEVICE ;
 int CONF2_FORCE_HOST ;
 int CONF2_NO_OVERRIDE ;
 int CONF2_OTGMODE ;



 int omap_ctrl_readl (int ) ;
 int omap_ctrl_writel (int ,int ) ;
 int pr_info (char*,int) ;

void am35x_set_mode(u8 musb_mode)
{
 u32 devconf2 = omap_ctrl_readl(AM35XX_CONTROL_DEVCONF2);

 devconf2 &= ~CONF2_OTGMODE;
 switch (musb_mode) {
 case 130:
  devconf2 |= CONF2_FORCE_HOST;
  break;
 case 128:
  devconf2 |= CONF2_FORCE_DEVICE;
  break;
 case 129:
  devconf2 |= CONF2_NO_OVERRIDE;
  break;
 default:
  pr_info("Unsupported mode %u\n", musb_mode);
 }

 omap_ctrl_writel(devconf2, AM35XX_CONTROL_DEVCONF2);
}
