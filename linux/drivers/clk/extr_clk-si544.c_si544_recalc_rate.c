
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_si544_muldiv {int dummy; } ;
struct clk_si544 {int dummy; } ;
struct clk_hw {int dummy; } ;


 unsigned long si544_calc_rate (struct clk_si544_muldiv*) ;
 int si544_get_muldiv (struct clk_si544*,struct clk_si544_muldiv*) ;
 struct clk_si544* to_clk_si544 (struct clk_hw*) ;

__attribute__((used)) static unsigned long si544_recalc_rate(struct clk_hw *hw,
  unsigned long parent_rate)
{
 struct clk_si544 *data = to_clk_si544(hw);
 struct clk_si544_muldiv settings;
 int err;

 err = si544_get_muldiv(data, &settings);
 if (err)
  return 0;

 return si544_calc_rate(&settings);
}
