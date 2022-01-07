
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ last; int sum; scalar_t__ time_started; } ;
typedef TYPE_1__ cl_perf_timer ;


 double git__timer () ;

void cl_perf_timer__stop(cl_perf_timer *t)
{
 double time_now = git__timer();

 t->last = time_now - t->time_started;
 t->sum += t->last;
}
