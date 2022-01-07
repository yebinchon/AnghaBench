
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ time_started; int sum; } ;
typedef TYPE_1__ perf_timer ;


 scalar_t__ now_in_ms () ;

void perf__timer__stop(perf_timer *t)
{
 uint32_t now = now_in_ms();
 t->sum += (now - t->time_started);
}
