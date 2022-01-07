
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ RK3288_MODE_CON ;
 scalar_t__ rk3288_cru_base ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void rk3288_clk_shutdown(void)
{
 writel_relaxed(0xf3030000, rk3288_cru_base + RK3288_MODE_CON);
}
