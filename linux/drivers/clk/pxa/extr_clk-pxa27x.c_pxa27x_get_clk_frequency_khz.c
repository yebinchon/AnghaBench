
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 scalar_t__ IS_ERR (struct clk*) ;
 unsigned int KHz ;
 struct clk* clk_get (int *,int ) ;
 unsigned long clk_get_rate (struct clk*) ;
 int clk_put (struct clk*) ;
 int * get_freq_khz ;
 int pr_info (char*,unsigned long,unsigned long) ;

unsigned int pxa27x_get_clk_frequency_khz(int info)
{
 struct clk *clk;
 unsigned long clks[5];
 int i;

 for (i = 0; i < 5; i++) {
  clk = clk_get(((void*)0), get_freq_khz[i]);
  if (IS_ERR(clk)) {
   clks[i] = 0;
  } else {
   clks[i] = clk_get_rate(clk);
   clk_put(clk);
  }
 }
 if (info) {
  pr_info("Run Mode clock: %ld.%02ldMHz\n",
   clks[1] / 1000000, (clks[1] % 1000000) / 10000);
  pr_info("Turbo Mode clock: %ld.%02ldMHz\n",
   clks[2] / 1000000, (clks[2] % 1000000) / 10000);
  pr_info("Memory clock: %ld.%02ldMHz\n",
   clks[3] / 1000000, (clks[3] % 1000000) / 10000);
  pr_info("System bus clock: %ld.%02ldMHz\n",
   clks[4] / 1000000, (clks[4] % 1000000) / 10000);
 }
 return (unsigned int)clks[0] / KHz;
}
