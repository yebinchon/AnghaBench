
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time64_t ;
struct timespec64 {int tv_sec; } ;





 int m41t81_set_time (int ) ;
 int swarm_rtc_type ;
 int xicor_set_time (int ) ;

int update_persistent_clock64(struct timespec64 now)
{
 time64_t sec = now.tv_sec;

 switch (swarm_rtc_type) {
 case 128:
  return xicor_set_time(sec);

 case 130:
  return m41t81_set_time(sec);

 case 129:
 default:
  return -1;
 }
}
