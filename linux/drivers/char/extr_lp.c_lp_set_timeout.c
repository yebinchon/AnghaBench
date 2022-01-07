
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int s64 ;
struct TYPE_2__ {long timeout; } ;


 long DIV_ROUND_UP (long,int) ;
 int EINVAL ;
 int HZ ;
 long MAX_JIFFY_OFFSET ;
 int MAX_SEC_IN_JIFFIES ;
 TYPE_1__* lp_table ;

__attribute__((used)) static int lp_set_timeout(unsigned int minor, s64 tv_sec, long tv_usec)
{
 long to_jiffies;


 if (tv_sec < 0 || tv_usec < 0)
  return -EINVAL;
 if (tv_usec > 999999)
  tv_usec = 999999;

 if (tv_sec >= MAX_SEC_IN_JIFFIES - 1) {
  to_jiffies = MAX_JIFFY_OFFSET;
 } else {
  to_jiffies = DIV_ROUND_UP(tv_usec, 1000000/HZ);
  to_jiffies += tv_sec * (long) HZ;
 }

 if (to_jiffies <= 0) {
  return -EINVAL;
 }
 lp_table[minor].timeout = to_jiffies;
 return 0;
}
