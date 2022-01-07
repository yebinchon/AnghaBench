
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 int CCCR ;
 unsigned int* L_clk_mult ;
 unsigned int* M_clk_mult ;
 unsigned int* N2_clk_mult ;
 unsigned long readl (int ) ;

__attribute__((used)) static unsigned long clk_pxa25x_cpll_get_rate(struct clk_hw *hw,
 unsigned long parent_rate)
{
 unsigned long clkcfg, cccr = readl(CCCR);
 unsigned int l, m, n2, t;

 asm("mrc\tp14, 0, %0, c6, c0, 0" : "=r" (clkcfg));
 t = clkcfg & (1 << 0);
 l = L_clk_mult[(cccr >> 0) & 0x1f];
 m = M_clk_mult[(cccr >> 5) & 0x03];
 n2 = N2_clk_mult[(cccr >> 7) & 0x07];

 return m * l * n2 * parent_rate / 2;
}
