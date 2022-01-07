
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int*) ;
 scalar_t__ RK3288_CLKGATE_CON (int) ;
 scalar_t__ RK3288_MODE_CON ;
 int readl_relaxed (scalar_t__) ;
 scalar_t__ rk3288_cru_base ;
 int* rk3288_saved_cru_reg_ids ;
 int * rk3288_saved_cru_regs ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int rk3288_clk_suspend(void)
{
 int i, reg_id;

 for (i = 0; i < ARRAY_SIZE(rk3288_saved_cru_reg_ids); i++) {
  reg_id = rk3288_saved_cru_reg_ids[i];

  rk3288_saved_cru_regs[i] =
    readl_relaxed(rk3288_cru_base + reg_id);
 }






 writel_relaxed(1 << (12 + 16),
         rk3288_cru_base + RK3288_CLKGATE_CON(10));
 writel_relaxed(0xf3030000, rk3288_cru_base + RK3288_MODE_CON);

 return 0;
}
