
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_state {int period; int duty_cycle; } ;
struct clk_pwm {int pwm; } ;
struct clk_hw {int dummy; } ;
struct clk_duty {int den; int num; } ;


 int pwm_get_state (int ,struct pwm_state*) ;
 struct clk_pwm* to_clk_pwm (struct clk_hw*) ;

__attribute__((used)) static int clk_pwm_get_duty_cycle(struct clk_hw *hw, struct clk_duty *duty)
{
 struct clk_pwm *clk_pwm = to_clk_pwm(hw);
 struct pwm_state state;

 pwm_get_state(clk_pwm->pwm, &state);

 duty->num = state.duty_cycle;
 duty->den = state.period;

 return 0;
}
