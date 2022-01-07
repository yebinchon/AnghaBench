
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int dummy; } ;
typedef scalar_t__ __u64 ;


 int STORE_CLOCK_EXT_SIZE ;
 scalar_t__ TOD_UNIX_EPOCH ;
 int ext_to_timespec64 (unsigned char*,struct timespec64*) ;
 int get_tod_clock_ext (unsigned char*) ;
 scalar_t__ initial_leap_seconds ;

void read_persistent_clock64(struct timespec64 *ts)
{
 unsigned char clk[STORE_CLOCK_EXT_SIZE];
 __u64 delta;

 delta = initial_leap_seconds + TOD_UNIX_EPOCH;
 get_tod_clock_ext(clk);
 *(__u64 *) &clk[1] -= delta;
 if (*(__u64 *) &clk[1] > delta)
  clk[0]--;
 ext_to_timespec64(clk, ts);
}
