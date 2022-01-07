
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ SDRAM_CONFIG_OFFS ;
 int SDRAM_CONFIG_SR_MODE_BIT ;
 scalar_t__ SDRAM_DLB_EVICTION_OFFS ;
 int SDRAM_DLB_EVICTION_THRESHOLD_MASK ;
 scalar_t__ SDRAM_OPERATION_OFFS ;
 int SDRAM_OPERATION_SELF_REFRESH ;
 int dsb () ;
 int flush_cache_all () ;
 int mvebu_board_pm_enter (scalar_t__,int) ;
 int outer_flush_all () ;
 int readl (scalar_t__) ;
 scalar_t__ sdram_ctrl ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int mvebu_pm_powerdown(unsigned long data)
{
 u32 reg, srcmd;

 flush_cache_all();
 outer_flush_all();





 dsb();


 reg = readl(sdram_ctrl + SDRAM_DLB_EVICTION_OFFS);
 reg &= ~SDRAM_DLB_EVICTION_THRESHOLD_MASK;
 writel(reg, sdram_ctrl + SDRAM_DLB_EVICTION_OFFS);

 udelay(7);


 reg = readl(sdram_ctrl + SDRAM_CONFIG_OFFS);
 reg &= ~SDRAM_CONFIG_SR_MODE_BIT;
 writel(reg, sdram_ctrl + SDRAM_CONFIG_OFFS);



 srcmd = readl(sdram_ctrl + SDRAM_OPERATION_OFFS);
 srcmd &= ~0x1F;
 srcmd |= SDRAM_OPERATION_SELF_REFRESH;

 mvebu_board_pm_enter(sdram_ctrl + SDRAM_OPERATION_OFFS, srcmd);

 return 0;
}
