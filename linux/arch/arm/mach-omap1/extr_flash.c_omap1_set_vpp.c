
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct platform_device {int dummy; } ;


 int EMIFS_CONFIG ;
 int OMAP_EMIFS_CONFIG_WP ;
 int omap_readl (int ) ;
 int omap_writel (int ,int ) ;

void omap1_set_vpp(struct platform_device *pdev, int enable)
{
 u32 l;

 l = omap_readl(EMIFS_CONFIG);
 if (enable)
  l |= OMAP_EMIFS_CONFIG_WP;
 else
  l &= ~OMAP_EMIFS_CONFIG_WP;
 omap_writel(l, EMIFS_CONFIG);
}
