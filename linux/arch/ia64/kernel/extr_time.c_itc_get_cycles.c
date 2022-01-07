
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u64 ;
struct clocksource {int dummy; } ;
struct TYPE_2__ {unsigned long itc_lastcycle; int itc_jitter; } ;


 unsigned long cmpxchg (unsigned long*,unsigned long,unsigned long) ;
 unsigned long get_cycles () ;
 TYPE_1__ itc_jitter_data ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static u64 itc_get_cycles(struct clocksource *cs)
{
 unsigned long lcycle, now, ret;

 if (!itc_jitter_data.itc_jitter)
  return get_cycles();

 lcycle = itc_jitter_data.itc_lastcycle;
 now = get_cycles();
 if (lcycle && time_after(lcycle, now))
  return lcycle;







 ret = cmpxchg(&itc_jitter_data.itc_lastcycle, lcycle, now);
 if (unlikely(ret != lcycle))
  return ret;

 return now;
}
