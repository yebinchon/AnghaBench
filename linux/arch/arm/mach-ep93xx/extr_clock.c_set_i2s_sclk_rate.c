
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct clk {int enable_reg; } ;
struct TYPE_4__ {int rate; } ;
struct TYPE_3__ {unsigned long rate; } ;


 int EINVAL ;
 unsigned int EP93XX_I2SCLKDIV_SDIV ;
 unsigned int __raw_readl (int ) ;
 TYPE_2__ clk_i2s_mclk ;
 TYPE_1__ clk_i2s_sclk ;
 int ep93xx_syscon_swlocked_write (unsigned int,int ) ;

__attribute__((used)) static int set_i2s_sclk_rate(struct clk *clk, unsigned long rate)
{
 unsigned val = __raw_readl(clk->enable_reg);

 if (rate == clk_i2s_mclk.rate / 2)
  ep93xx_syscon_swlocked_write(val & ~EP93XX_I2SCLKDIV_SDIV,
          clk->enable_reg);
 else if (rate == clk_i2s_mclk.rate / 4)
  ep93xx_syscon_swlocked_write(val | EP93XX_I2SCLKDIV_SDIV,
          clk->enable_reg);
 else
  return -EINVAL;

 clk_i2s_sclk.rate = rate;
 return 0;
}
