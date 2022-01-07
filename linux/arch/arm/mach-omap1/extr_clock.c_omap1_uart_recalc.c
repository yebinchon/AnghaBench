
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {unsigned int enable_bit; int enable_reg; } ;


 unsigned int __raw_readl (int ) ;

unsigned long omap1_uart_recalc(struct clk *clk)
{
 unsigned int val = __raw_readl(clk->enable_reg);
 return val & clk->enable_bit ? 48000000 : 12000000;
}
