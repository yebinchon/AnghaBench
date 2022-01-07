
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_pwm {int pwm; } ;
struct clk_hw {int dummy; } ;


 int pwm_disable (int ) ;
 struct clk_pwm* to_clk_pwm (struct clk_hw*) ;

__attribute__((used)) static void clk_pwm_unprepare(struct clk_hw *hw)
{
 struct clk_pwm *clk_pwm = to_clk_pwm(hw);

 pwm_disable(clk_pwm->pwm);
}
