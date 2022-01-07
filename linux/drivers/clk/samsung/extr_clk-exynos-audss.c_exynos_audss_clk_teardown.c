
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num; int * hws; } ;


 int EXYNOS_DOUT_SRP ;
 int EXYNOS_MOUT_AUDSS ;
 int EXYNOS_SRP_CLK ;
 int IS_ERR (int ) ;
 TYPE_1__* clk_data ;
 int clk_hw_unregister_divider (int ) ;
 int clk_hw_unregister_gate (int ) ;
 int clk_hw_unregister_mux (int ) ;

__attribute__((used)) static void exynos_audss_clk_teardown(void)
{
 int i;

 for (i = EXYNOS_MOUT_AUDSS; i < EXYNOS_DOUT_SRP; i++) {
  if (!IS_ERR(clk_data->hws[i]))
   clk_hw_unregister_mux(clk_data->hws[i]);
 }

 for (; i < EXYNOS_SRP_CLK; i++) {
  if (!IS_ERR(clk_data->hws[i]))
   clk_hw_unregister_divider(clk_data->hws[i]);
 }

 for (; i < clk_data->num; i++) {
  if (!IS_ERR(clk_data->hws[i]))
   clk_hw_unregister_gate(clk_data->hws[i]);
 }
}
