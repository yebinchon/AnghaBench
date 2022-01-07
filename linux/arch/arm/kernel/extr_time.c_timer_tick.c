
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_PROFILING ;
 int get_irq_regs () ;
 int profile_tick (int ) ;
 int update_process_times (int ) ;
 int user_mode (int ) ;
 int xtime_update (int) ;

void timer_tick(void)
{
 profile_tick(CPU_PROFILING);
 xtime_update(1);

 update_process_times(user_mode(get_irq_regs()));

}
