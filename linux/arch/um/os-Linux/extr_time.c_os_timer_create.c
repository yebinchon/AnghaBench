
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timer_t ;


 int CLOCK_MONOTONIC ;
 int event_high_res_timer ;
 int timer_create (int ,int *,int *) ;

int os_timer_create(void)
{
 timer_t *t = &event_high_res_timer;

 if (timer_create(CLOCK_MONOTONIC, ((void*)0), t) == -1)
  return -1;

 return 0;
}
