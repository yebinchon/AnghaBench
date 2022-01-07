
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hrtimer_cancel (int *) ;
 int kfree (int ) ;
 int pr_debug (char*) ;
 int samples ;
 scalar_t__ spu_prof_running ;
 int timer ;

void stop_spu_profiling_cycles(void)
{
 spu_prof_running = 0;
 hrtimer_cancel(&timer);
 kfree(samples);
 pr_debug("SPU_PROF: stop_spu_profiling_cycles issued\n");
}
