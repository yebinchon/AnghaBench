
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {int enable_reg; } ;


 int EP93XX_SYSCON_CLKDIV_ESEL ;
 int EP93XX_SYSCON_CLKDIV_PDIV_SHIFT ;
 int EP93XX_SYSCON_CLKDIV_PSEL ;
 int __raw_readl (int ) ;
 int calc_clk_div (struct clk*,unsigned long,int*,int*,int*,int*) ;
 int ep93xx_syscon_swlocked_write (int,int ) ;

__attribute__((used)) static int set_div_rate(struct clk *clk, unsigned long rate)
{
 int err, psel = 0, esel = 0, pdiv = 0, div = 0;
 u32 val;

 err = calc_clk_div(clk, rate, &psel, &esel, &pdiv, &div);
 if (err)
  return err;


 val = __raw_readl(clk->enable_reg);
 val &= ~0x7fff;


 val |= (esel ? EP93XX_SYSCON_CLKDIV_ESEL : 0) |
  (psel ? EP93XX_SYSCON_CLKDIV_PSEL : 0) |
  (pdiv << EP93XX_SYSCON_CLKDIV_PDIV_SHIFT) | div;
 ep93xx_syscon_swlocked_write(val, clk->enable_reg);
 return 0;
}
