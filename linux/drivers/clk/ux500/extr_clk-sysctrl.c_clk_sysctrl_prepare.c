
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_sysctrl {int enable_delay_us; int * reg_bits; int * reg_mask; int * reg_sel; } ;
struct clk_hw {int dummy; } ;


 int ab8500_sysctrl_write (int ,int ,int ) ;
 struct clk_sysctrl* to_clk_sysctrl (struct clk_hw*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int clk_sysctrl_prepare(struct clk_hw *hw)
{
 int ret;
 struct clk_sysctrl *clk = to_clk_sysctrl(hw);

 ret = ab8500_sysctrl_write(clk->reg_sel[0], clk->reg_mask[0],
    clk->reg_bits[0]);

 if (!ret && clk->enable_delay_us)
  usleep_range(clk->enable_delay_us, clk->enable_delay_us +
        (clk->enable_delay_us >> 2));

 return ret;
}
