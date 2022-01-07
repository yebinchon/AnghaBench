
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct clk_hw {int dummy; } ;
struct clk_fractional_divider {int (* approximation ) (struct clk_hw*,unsigned long,unsigned long*,unsigned long*,unsigned long*) ;} ;


 int clk_fd_general_approximation (struct clk_hw*,unsigned long,unsigned long*,unsigned long*,unsigned long*) ;
 int clk_hw_can_set_rate_parent (struct clk_hw*) ;
 int do_div (unsigned long,unsigned long) ;
 int stub1 (struct clk_hw*,unsigned long,unsigned long*,unsigned long*,unsigned long*) ;
 struct clk_fractional_divider* to_clk_fd (struct clk_hw*) ;

__attribute__((used)) static long clk_fd_round_rate(struct clk_hw *hw, unsigned long rate,
         unsigned long *parent_rate)
{
 struct clk_fractional_divider *fd = to_clk_fd(hw);
 unsigned long m, n;
 u64 ret;

 if (!rate || (!clk_hw_can_set_rate_parent(hw) && rate >= *parent_rate))
  return *parent_rate;

 if (fd->approximation)
  fd->approximation(hw, rate, parent_rate, &m, &n);
 else
  clk_fd_general_approximation(hw, rate, parent_rate, &m, &n);

 ret = (u64)*parent_rate * m;
 do_div(ret, n);

 return ret;
}
