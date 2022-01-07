
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int api_ck_p ;
 int omap1_clk_disable (int ) ;
 int omap1_clk_enable (int ) ;
 int omap1_clk_enable_generic (struct clk*) ;

__attribute__((used)) static int omap1_clk_enable_dsp_domain(struct clk *clk)
{
 int retval;

 retval = omap1_clk_enable(api_ck_p);
 if (!retval) {
  retval = omap1_clk_enable_generic(clk);
  omap1_clk_disable(api_ck_p);
 }

 return retval;
}
