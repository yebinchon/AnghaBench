
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw_omap {int dummy; } ;


 int OMAP2_APLL_AUTOIDLE_LOW_POWER_STOP ;
 int omap2_apll_set_autoidle (struct clk_hw_omap*,int ) ;

__attribute__((used)) static void omap2_apll_allow_idle(struct clk_hw_omap *clk)
{
 omap2_apll_set_autoidle(clk, OMAP2_APLL_AUTOIDLE_LOW_POWER_STOP);
}
