
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time64_t ;
struct timespec64 {scalar_t__ tv_nsec; int tv_sec; } ;





 int m41t81_get_time () ;
 int mktime64 (int,int,int,int ,int ,int ) ;
 int swarm_rtc_type ;
 int xicor_get_time () ;

void read_persistent_clock64(struct timespec64 *ts)
{
 time64_t sec;

 switch (swarm_rtc_type) {
 case 128:
  sec = xicor_get_time();
  break;

 case 130:
  sec = m41t81_get_time();
  break;

 case 129:
 default:
  sec = mktime64(2000, 1, 1, 0, 0, 0);
  break;
 }
 ts->tv_sec = sec;
 ts->tv_nsec = 0;
}
