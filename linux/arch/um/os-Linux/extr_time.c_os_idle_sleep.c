
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {unsigned long long tv_sec; unsigned long long tv_nsec; } ;


 int CLOCK_MONOTONIC ;
 unsigned long long UM_NSEC_PER_SEC ;
 scalar_t__ clock_nanosleep (int ,int ,struct timespec*,int *) ;
 int deliver_alarm () ;

void os_idle_sleep(unsigned long long nsecs)
{
 struct timespec ts = {
  .tv_sec = nsecs / UM_NSEC_PER_SEC,
  .tv_nsec = nsecs % UM_NSEC_PER_SEC
 };




 if (clock_nanosleep(CLOCK_MONOTONIC, 0, &ts, ((void*)0)))
  deliver_alarm();
}
