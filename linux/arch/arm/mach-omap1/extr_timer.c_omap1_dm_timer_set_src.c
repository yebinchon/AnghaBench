
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct platform_device {int id; } ;


 int MOD_CONF_CTRL_1 ;
 int omap_readl (int ) ;
 int omap_writel (int,int ) ;

__attribute__((used)) static int omap1_dm_timer_set_src(struct platform_device *pdev,
    int source)
{
 int n = (pdev->id - 1) << 1;
 u32 l;

 l = omap_readl(MOD_CONF_CTRL_1) & ~(0x03 << n);
 l |= source << n;
 omap_writel(l, MOD_CONF_CTRL_1);

 return 0;
}
