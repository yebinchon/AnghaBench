
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;


 int CLOCK_REALTIME ;
 int clock_gettime (int ,struct timespec*) ;
 long long timespec_to_ns (struct timespec*) ;

long long os_persistent_clock_emulation(void)
{
 struct timespec realtime_tp;

 clock_gettime(CLOCK_REALTIME, &realtime_tp);
 return timespec_to_ns(&realtime_tp);
}
