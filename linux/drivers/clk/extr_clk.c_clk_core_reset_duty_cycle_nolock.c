
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num; int den; } ;
struct clk_core {TYPE_1__ duty; } ;



__attribute__((used)) static void clk_core_reset_duty_cycle_nolock(struct clk_core *core)
{

 core->duty.num = 1;
 core->duty.den = 2;
}
