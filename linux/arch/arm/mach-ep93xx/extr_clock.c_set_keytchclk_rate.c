
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {int enable_mask; unsigned long rate; int enable_reg; } ;


 int EINVAL ;
 unsigned long EP93XX_KEYTCHCLK_DIV16 ;
 unsigned long EP93XX_KEYTCHCLK_DIV4 ;
 int __raw_readl (int ) ;
 int ep93xx_syscon_swlocked_write (int,int ) ;

__attribute__((used)) static int set_keytchclk_rate(struct clk *clk, unsigned long rate)
{
 u32 val;
 u32 div_bit;

 val = __raw_readl(clk->enable_reg);
 div_bit = clk->enable_mask >> 15;

 if (rate == EP93XX_KEYTCHCLK_DIV4)
  val |= div_bit;
 else if (rate == EP93XX_KEYTCHCLK_DIV16)
  val &= ~div_bit;
 else
  return -EINVAL;

 ep93xx_syscon_swlocked_write(val, clk->enable_reg);
 clk->rate = rate;
 return 0;
}
