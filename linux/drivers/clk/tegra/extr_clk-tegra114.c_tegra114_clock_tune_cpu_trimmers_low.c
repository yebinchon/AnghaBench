
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CPU_FINETRIM_1_FCPU_1 ;
 int CPU_FINETRIM_1_FCPU_2 ;
 int CPU_FINETRIM_1_FCPU_3 ;
 int CPU_FINETRIM_1_FCPU_4 ;
 int CPU_FINETRIM_1_FCPU_5 ;
 int CPU_FINETRIM_1_FCPU_6 ;
 scalar_t__ CPU_FINETRIM_SELECT ;
 scalar_t__ clk_base ;
 int tegra114_car_barrier () ;
 int writel_relaxed (int,scalar_t__) ;

void tegra114_clock_tune_cpu_trimmers_low(void)
{
 u32 select = 0;






 select |= (CPU_FINETRIM_1_FCPU_1 | CPU_FINETRIM_1_FCPU_2 |
     CPU_FINETRIM_1_FCPU_3 | CPU_FINETRIM_1_FCPU_4 |
     CPU_FINETRIM_1_FCPU_5 | CPU_FINETRIM_1_FCPU_6);
 writel_relaxed(select, clk_base + CPU_FINETRIM_SELECT);

 tegra114_car_barrier();
}
