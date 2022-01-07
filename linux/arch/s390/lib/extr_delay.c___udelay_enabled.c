
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {int clock_comparator; } ;


 TYPE_1__ S390_lowcore ;
 int enabled_wait () ;
 scalar_t__ get_tod_clock_fast () ;
 scalar_t__ local_tick_disable () ;
 int local_tick_enable (scalar_t__) ;
 int set_clock_comparator (scalar_t__) ;
 scalar_t__ tod_after (int ,scalar_t__) ;

__attribute__((used)) static void __udelay_enabled(unsigned long long usecs)
{
 u64 clock_saved, end;

 end = get_tod_clock_fast() + (usecs << 12);
 do {
  clock_saved = 0;
  if (tod_after(S390_lowcore.clock_comparator, end)) {
   clock_saved = local_tick_disable();
   set_clock_comparator(end);
  }
  enabled_wait();
  if (clock_saved)
   local_tick_enable(clock_saved);
 } while (get_tod_clock_fast() < end);
}
