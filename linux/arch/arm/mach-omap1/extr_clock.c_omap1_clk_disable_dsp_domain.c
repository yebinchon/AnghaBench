
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int api_ck_p ;
 int omap1_clk_disable (int ) ;
 int omap1_clk_disable_generic (struct clk*) ;
 scalar_t__ omap1_clk_enable (int ) ;

__attribute__((used)) static void omap1_clk_disable_dsp_domain(struct clk *clk)
{
 if (omap1_clk_enable(api_ck_p) == 0) {
  omap1_clk_disable_generic(clk);
  omap1_clk_disable(api_ck_p);
 }
}
