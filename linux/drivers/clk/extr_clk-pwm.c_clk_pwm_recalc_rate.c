
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_pwm {unsigned long fixed_rate; } ;
struct clk_hw {int dummy; } ;


 struct clk_pwm* to_clk_pwm (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_pwm_recalc_rate(struct clk_hw *hw,
      unsigned long parent_rate)
{
 struct clk_pwm *clk_pwm = to_clk_pwm(hw);

 return clk_pwm->fixed_rate;
}
