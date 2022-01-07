
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpll_data {int last_rounded_n; long last_rounded_m; int last_rounded_lpmode; int clk_ref; } ;


 long OMAP4_DPLL_LP_FINT_MAX ;
 long OMAP4_DPLL_LP_FOUT_MAX ;
 int clk_hw_get_rate (int ) ;

__attribute__((used)) static void omap4_dpll_lpmode_recalc(struct dpll_data *dd)
{
 long fint, fout;

 fint = clk_hw_get_rate(dd->clk_ref) / (dd->last_rounded_n + 1);
 fout = fint * dd->last_rounded_m;

 if ((fint < OMAP4_DPLL_LP_FINT_MAX) && (fout < OMAP4_DPLL_LP_FOUT_MAX))
  dd->last_rounded_lpmode = 1;
 else
  dd->last_rounded_lpmode = 0;
}
