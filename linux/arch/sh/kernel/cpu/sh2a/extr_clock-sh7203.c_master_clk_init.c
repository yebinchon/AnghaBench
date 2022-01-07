
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int rate; } ;


 int FREQCR ;
 int __raw_readw (int ) ;
 int* pll1rate ;
 int pll2_mult ;

__attribute__((used)) static void master_clk_init(struct clk *clk)
{
 clk->rate *= pll1rate[(__raw_readw(FREQCR) >> 8) & 0x0003] * pll2_mult;
}
