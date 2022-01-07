
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;


 int AM35XX_CONTROL_DEVCONF2 ;
 int CONF2_OTGPWRDN ;
 int CONF2_PHYCLKGD ;
 int CONF2_PHYPWRDN ;
 int CONF2_PHY_PLLON ;
 int CONF2_RESET ;
 int cpu_relax () ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int omap_ctrl_readl (int ) ;
 int omap_ctrl_writel (int,int ) ;
 int pr_err (char*) ;
 int pr_info (char*) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

void am35x_musb_phy_power(u8 on)
{
 unsigned long timeout = jiffies + msecs_to_jiffies(100);
 u32 devconf2;

 if (on) {



  devconf2 = omap_ctrl_readl(AM35XX_CONTROL_DEVCONF2);

  devconf2 &= ~(CONF2_RESET | CONF2_PHYPWRDN | CONF2_OTGPWRDN);
  devconf2 |= CONF2_PHY_PLLON;

  omap_ctrl_writel(devconf2, AM35XX_CONTROL_DEVCONF2);

  pr_info("Waiting for PHY clock good...\n");
  while (!(omap_ctrl_readl(AM35XX_CONTROL_DEVCONF2)
    & CONF2_PHYCLKGD)) {
   cpu_relax();

   if (time_after(jiffies, timeout)) {
    pr_err("musb PHY clock good timed out\n");
    break;
   }
  }
 } else {



  devconf2 = omap_ctrl_readl(AM35XX_CONTROL_DEVCONF2);

  devconf2 &= ~CONF2_PHY_PLLON;
  devconf2 |= CONF2_PHYPWRDN | CONF2_OTGPWRDN;
  omap_ctrl_writel(devconf2, AM35XX_CONTROL_DEVCONF2);
 }
}
