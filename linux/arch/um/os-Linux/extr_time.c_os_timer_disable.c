
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct itimerspec {int dummy; } ;


 int event_high_res_timer ;
 int memset (struct itimerspec*,int ,int) ;
 int timer_settime (int ,int ,struct itimerspec*,int *) ;

void os_timer_disable(void)
{
 struct itimerspec its;

 memset(&its, 0, sizeof(struct itimerspec));
 timer_settime(event_high_res_timer, 0, &its, ((void*)0));
}
