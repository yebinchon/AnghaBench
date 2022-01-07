
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int time_started; } ;
typedef TYPE_1__ cl_perf_timer ;


 int git__timer () ;

void cl_perf_timer__start(cl_perf_timer *t)
{
 t->time_started = git__timer();
}
