
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLK_IGNORE_UNUSED ;
 size_t CPU_SYSTICK ;
 size_t HCLK ;
 size_t PCLK1 ;
 size_t PCLK2 ;
 size_t PCLK3 ;
 size_t PCLK4 ;
 scalar_t__ RCC_D1CFGR ;
 scalar_t__ RCC_D2CFGR ;
 scalar_t__ RCC_D3CFGR ;
 size_t SYS_D1CPRE ;
 scalar_t__ base ;
 int clk_hw_register_divider_table (int *,char*,char*,int ,scalar_t__,int,int,int ,int ,int *) ;
 int clk_hw_register_fixed_factor (int *,char*,char*,int ,int,int) ;
 int clk_register_stm32_timer_ker (int *,char*,char*,int ,int,int *) ;
 int d1cpre_div_table ;
 int * hws ;
 int ppre_div_table ;
 int stm32rcc_lock ;

__attribute__((used)) static void register_core_and_bus_clocks(void)
{

 hws[SYS_D1CPRE] = clk_hw_register_divider_table(((void*)0), "d1cpre",
   "sys_ck", CLK_IGNORE_UNUSED, base + RCC_D1CFGR, 8, 4, 0,
   d1cpre_div_table, &stm32rcc_lock);

 hws[HCLK] = clk_hw_register_divider_table(((void*)0), "hclk", "d1cpre",
   CLK_IGNORE_UNUSED, base + RCC_D1CFGR, 0, 4, 0,
   d1cpre_div_table, &stm32rcc_lock);



 hws[CPU_SYSTICK] = clk_hw_register_fixed_factor(((void*)0), "systick",
   "d1cpre", 0, 1, 8);


 hws[PCLK3] = clk_hw_register_divider_table(((void*)0), "pclk3", "hclk", 0,
   base + RCC_D1CFGR, 4, 3, 0,
   ppre_div_table, &stm32rcc_lock);



 hws[PCLK1] = clk_hw_register_divider_table(((void*)0), "pclk1", "hclk", 0,
   base + RCC_D2CFGR, 4, 3, 0,
   ppre_div_table, &stm32rcc_lock);


 clk_register_stm32_timer_ker(((void*)0), "tim1_ker", "pclk1", 0,
   4, &stm32rcc_lock);


 hws[PCLK2] = clk_hw_register_divider_table(((void*)0), "pclk2", "hclk", 0,
   base + RCC_D2CFGR, 8, 3, 0, ppre_div_table,
   &stm32rcc_lock);

 clk_register_stm32_timer_ker(((void*)0), "tim2_ker", "pclk2", 0, 8,
   &stm32rcc_lock);



 hws[PCLK4] = clk_hw_register_divider_table(((void*)0), "pclk4", "hclk", 0,
   base + RCC_D3CFGR, 4, 3, 0,
   ppre_div_table, &stm32rcc_lock);
}
