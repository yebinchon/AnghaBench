
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_si514_muldiv {int dummy; } ;
struct clk_hw {int dummy; } ;


 int si514_calc_muldiv (struct clk_si514_muldiv*,unsigned long) ;
 long si514_calc_rate (struct clk_si514_muldiv*) ;

__attribute__((used)) static long si514_round_rate(struct clk_hw *hw, unsigned long rate,
  unsigned long *parent_rate)
{
 struct clk_si514_muldiv settings;
 int err;

 if (!rate)
  return 0;

 err = si514_calc_muldiv(&settings, rate);
 if (err)
  return err;

 return si514_calc_rate(&settings);
}
