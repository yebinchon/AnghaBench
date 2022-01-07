
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IS_ERR (int ) ;
 int api_clk ;
 int clk_disable (int ) ;
 int clk_put (int ) ;
 int dsp_clk ;
 scalar_t__ dsp_use ;

__attribute__((used)) static void omap1_mcbsp_free(unsigned int id)
{
 if (id == 0 || id == 2) {
  if (--dsp_use == 0) {
   if (!IS_ERR(api_clk)) {
    clk_disable(api_clk);
    clk_put(api_clk);
   }
   if (!IS_ERR(dsp_clk)) {
    clk_disable(dsp_clk);
    clk_put(dsp_clk);
   }
  }
 }
}
