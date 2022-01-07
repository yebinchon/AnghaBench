
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_si544 {int dummy; } ;
struct clk_hw {int dummy; } ;


 long EINVAL ;
 int is_valid_frequency (struct clk_si544*,unsigned long) ;
 struct clk_si544* to_clk_si544 (struct clk_hw*) ;

__attribute__((used)) static long si544_round_rate(struct clk_hw *hw, unsigned long rate,
  unsigned long *parent_rate)
{
 struct clk_si544 *data = to_clk_si544(hw);

 if (!is_valid_frequency(data, rate))
  return -EINVAL;


 return rate;
}
