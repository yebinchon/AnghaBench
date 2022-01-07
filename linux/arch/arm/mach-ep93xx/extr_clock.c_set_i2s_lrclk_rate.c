
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct clk {int enable_reg; } ;
struct TYPE_4__ {unsigned long rate; } ;
struct TYPE_3__ {int rate; } ;


 int EINVAL ;
 unsigned int EP93XX_I2SCLKDIV_LRDIV128 ;
 unsigned int EP93XX_I2SCLKDIV_LRDIV32 ;
 unsigned int EP93XX_I2SCLKDIV_LRDIV64 ;
 unsigned int EP93XX_I2SCLKDIV_LRDIV_MASK ;
 unsigned int __raw_readl (int ) ;
 TYPE_2__ clk_i2s_lrclk ;
 TYPE_1__ clk_i2s_sclk ;
 int ep93xx_syscon_swlocked_write (unsigned int,int ) ;

__attribute__((used)) static int set_i2s_lrclk_rate(struct clk *clk, unsigned long rate)
{
 unsigned val = __raw_readl(clk->enable_reg) &
  ~EP93XX_I2SCLKDIV_LRDIV_MASK;

 if (rate == clk_i2s_sclk.rate / 32)
  ep93xx_syscon_swlocked_write(val | EP93XX_I2SCLKDIV_LRDIV32,
          clk->enable_reg);
 else if (rate == clk_i2s_sclk.rate / 64)
  ep93xx_syscon_swlocked_write(val | EP93XX_I2SCLKDIV_LRDIV64,
          clk->enable_reg);
 else if (rate == clk_i2s_sclk.rate / 128)
  ep93xx_syscon_swlocked_write(val | EP93XX_I2SCLKDIV_LRDIV128,
          clk->enable_reg);
 else
  return -EINVAL;

 clk_i2s_lrclk.rate = rate;
 return 0;
}
