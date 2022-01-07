
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CONF_CM_CMASK ;
 int CONF_CM_UNCACHED ;
 int PERF_SOFTRESET_REG ;
 int SOFTRESET_6348_ALL ;
 int ST0_BEV ;
 int ST0_ERL ;
 int __flush_cache_all () ;
 int bcm_perf_readl (int ) ;
 int bcm_perf_writel (int ,int ) ;
 int change_c0_config (int ,int ) ;
 int mdelay (int) ;
 int pr_info (char*) ;
 int set_c0_status (int) ;
 int write_c0_wired (int ) ;

__attribute__((used)) static void bcm6348_a1_reboot(void)
{
 u32 reg;


 pr_info("soft-resetting all blocks ...\n");
 reg = bcm_perf_readl(PERF_SOFTRESET_REG);
 reg &= ~SOFTRESET_6348_ALL;
 bcm_perf_writel(reg, PERF_SOFTRESET_REG);
 mdelay(10);

 reg = bcm_perf_readl(PERF_SOFTRESET_REG);
 reg |= SOFTRESET_6348_ALL;
 bcm_perf_writel(reg, PERF_SOFTRESET_REG);
 mdelay(10);


 pr_info("jumping to reset vector.\n");

 set_c0_status(ST0_BEV | ST0_ERL);

 change_c0_config(CONF_CM_CMASK, CONF_CM_UNCACHED);
 __flush_cache_all();

 write_c0_wired(0);
 __asm__ __volatile__(
  "jr\t%0"
  :
  : "r" (0xbfc00000));
 while (1)
  ;
}
