
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tv_nsec; int tv_sec; } ;
struct TYPE_3__ {unsigned long long tv_sec; unsigned long long tv_nsec; } ;
struct itimerspec {TYPE_2__ it_interval; TYPE_1__ it_value; } ;


 unsigned long long UM_NSEC_PER_SEC ;
 int event_high_res_timer ;
 int timer_settime (int ,int ,struct itimerspec*,int *) ;

int os_timer_one_shot(unsigned long long nsecs)
{
 struct itimerspec its = {
  .it_value.tv_sec = nsecs / UM_NSEC_PER_SEC,
  .it_value.tv_nsec = nsecs % UM_NSEC_PER_SEC,

  .it_interval.tv_sec = 0,
  .it_interval.tv_nsec = 0,
 };

 timer_settime(event_high_res_timer, 0, &its, ((void*)0));
 return 0;
}
