
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_duty {int den; int num; } ;
struct clk_core {struct clk_duty duty; } ;


 int clk_core_update_duty_cycle_nolock (struct clk_core*) ;
 int clk_prepare_lock () ;
 int clk_prepare_unlock () ;
 int mult_frac (unsigned int,int ,int ) ;

__attribute__((used)) static int clk_core_get_scaled_duty_cycle(struct clk_core *core,
       unsigned int scale)
{
 struct clk_duty *duty = &core->duty;
 int ret;

 clk_prepare_lock();

 ret = clk_core_update_duty_cycle_nolock(core);
 if (!ret)
  ret = mult_frac(scale, duty->num, duty->den);

 clk_prepare_unlock();

 return ret;
}
