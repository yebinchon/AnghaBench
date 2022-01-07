
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEFAULT_TIMER_EXPIRE ;
 int schedule_delayed_work (int *,int ) ;
 int spu_prof_running ;
 int spu_work ;

void start_spu_profiling_events(void)
{
 spu_prof_running = 1;
 schedule_delayed_work(&spu_work, DEFAULT_TIMER_EXPIRE);

 return;
}
