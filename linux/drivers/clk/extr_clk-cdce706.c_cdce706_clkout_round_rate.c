
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;



__attribute__((used)) static long cdce706_clkout_round_rate(struct clk_hw *hw, unsigned long rate,
          unsigned long *parent_rate)
{
 *parent_rate = rate;
 return rate;
}
