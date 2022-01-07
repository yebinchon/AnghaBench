
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
 scalar_t__ CPU_FINETRIM_DR ;
 scalar_t__ CPU_FINETRIM_R ;
 int CPU_FINETRIM_R_FCPU_1_MASK ;
 int CPU_FINETRIM_R_FCPU_2_MASK ;
 int CPU_FINETRIM_R_FCPU_3_MASK ;
 int CPU_FINETRIM_R_FCPU_4_MASK ;
 int CPU_FINETRIM_R_FCPU_5_MASK ;
 int CPU_FINETRIM_R_FCPU_6_MASK ;
 scalar_t__ clk_base ;
 int tegra114_clock_tune_cpu_trimmers_low () ;
 int writel_relaxed (int,scalar_t__) ;

void tegra114_clock_tune_cpu_trimmers_init(void)
{
 u32 dr = 0, r = 0;


 r |= (CPU_FINETRIM_R_FCPU_1_MASK | CPU_FINETRIM_R_FCPU_2_MASK |
       CPU_FINETRIM_R_FCPU_3_MASK | CPU_FINETRIM_R_FCPU_4_MASK |
       CPU_FINETRIM_R_FCPU_5_MASK | CPU_FINETRIM_R_FCPU_6_MASK);
 writel_relaxed(r, clk_base + CPU_FINETRIM_R);





 dr |= (CPU_FINETRIM_1_FCPU_1 | CPU_FINETRIM_1_FCPU_2 |
        CPU_FINETRIM_1_FCPU_3 | CPU_FINETRIM_1_FCPU_4 |
        CPU_FINETRIM_1_FCPU_5 | CPU_FINETRIM_1_FCPU_6);
 writel_relaxed(dr, clk_base + CPU_FINETRIM_DR);

 tegra114_clock_tune_cpu_trimmers_low();
}
