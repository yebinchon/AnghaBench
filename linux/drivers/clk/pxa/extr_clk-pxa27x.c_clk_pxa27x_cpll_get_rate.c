
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 int CCSR ;
 unsigned long CCSR_L_MASK ;
 unsigned long CCSR_N2_MASK ;
 unsigned long CCSR_N2_SHIFT ;
 unsigned long readl (int ) ;

__attribute__((used)) static unsigned long clk_pxa27x_cpll_get_rate(struct clk_hw *hw,
 unsigned long parent_rate)
{
 unsigned long clkcfg;
 unsigned int t, ht;
 unsigned int l, L, n2, N;
 unsigned long ccsr = readl(CCSR);

 asm("mrc\tp14, 0, %0, c6, c0, 0" : "=r" (clkcfg));
 t = clkcfg & (1 << 0);
 ht = clkcfg & (1 << 2);

 l = ccsr & CCSR_L_MASK;
 n2 = (ccsr & CCSR_N2_MASK) >> CCSR_N2_SHIFT;
 L = l * parent_rate;
 N = (L * n2) / 2;

 return N;
}
