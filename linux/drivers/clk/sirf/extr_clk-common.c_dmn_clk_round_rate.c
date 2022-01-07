
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 unsigned int BIT (unsigned int) ;
 char* clk_hw_get_name (struct clk_hw*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static long dmn_clk_round_rate(struct clk_hw *hw, unsigned long rate,
 unsigned long *parent_rate)
{
 unsigned long fin;
 unsigned ratio, wait, hold;
 const char *name = clk_hw_get_name(hw);
 unsigned bits = (strcmp(name, "mem") == 0) ? 3 : 4;

 fin = *parent_rate;
 ratio = fin / rate;

 if (ratio < 2)
  ratio = 2;
 if (ratio > BIT(bits + 1))
  ratio = BIT(bits + 1);

 wait = (ratio >> 1) - 1;
 hold = ratio - wait - 2;

 return fin / (wait + hold + 2);
}
