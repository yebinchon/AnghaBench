
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {scalar_t__* rates; scalar_t__ rate; int module; } ;


 int ifccr ;
 unsigned int ltq_cgu_r32 (int ) ;
 int ltq_cgu_w32 (unsigned int,int ) ;

__attribute__((used)) static int clkout_enable(struct clk *clk)
{
 int i;


 for (i = 0; i < 4; i++) {
  if (clk->rates[i] == clk->rate) {
   int shift = 14 - (2 * clk->module);
   int enable = 7 - clk->module;
   unsigned int val = ltq_cgu_r32(ifccr);

   val &= ~(3 << shift);
   val |= i << shift;
   val |= enable;
   ltq_cgu_w32(val, ifccr);
   return 0;
  }
 }
 return -1;
}
