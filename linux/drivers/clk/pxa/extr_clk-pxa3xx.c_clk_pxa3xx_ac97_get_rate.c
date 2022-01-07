
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 unsigned long AC97_DIV ;

__attribute__((used)) static unsigned long clk_pxa3xx_ac97_get_rate(struct clk_hw *hw,
          unsigned long parent_rate)
{
 unsigned long ac97_div, rate;

 ac97_div = AC97_DIV;




 rate = parent_rate / 2;
 rate /= ((ac97_div >> 12) & 0x7fff);
 rate *= (ac97_div & 0xfff);

 return rate;
}
