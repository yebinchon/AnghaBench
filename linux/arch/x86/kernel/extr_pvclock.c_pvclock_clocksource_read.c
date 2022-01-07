
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
struct pvclock_vcpu_time_info {int flags; } ;


 int PVCLOCK_GUEST_STOPPED ;
 int PVCLOCK_TSC_STABLE_BIT ;
 scalar_t__ __pvclock_read_cycles (struct pvclock_vcpu_time_info*,int ) ;
 scalar_t__ atomic64_cmpxchg (int *,scalar_t__,scalar_t__) ;
 scalar_t__ atomic64_read (int *) ;
 int last_value ;
 unsigned int pvclock_read_begin (struct pvclock_vcpu_time_info*) ;
 scalar_t__ pvclock_read_retry (struct pvclock_vcpu_time_info*,unsigned int) ;
 int pvclock_touch_watchdogs () ;
 int rdtsc_ordered () ;
 scalar_t__ unlikely (int) ;
 int valid_flags ;

u64 pvclock_clocksource_read(struct pvclock_vcpu_time_info *src)
{
 unsigned version;
 u64 ret;
 u64 last;
 u8 flags;

 do {
  version = pvclock_read_begin(src);
  ret = __pvclock_read_cycles(src, rdtsc_ordered());
  flags = src->flags;
 } while (pvclock_read_retry(src, version));

 if (unlikely((flags & PVCLOCK_GUEST_STOPPED) != 0)) {
  src->flags &= ~PVCLOCK_GUEST_STOPPED;
  pvclock_touch_watchdogs();
 }

 if ((valid_flags & PVCLOCK_TSC_STABLE_BIT) &&
  (flags & PVCLOCK_TSC_STABLE_BIT))
  return ret;
 last = atomic64_read(&last_value);
 do {
  if (ret < last)
   return last;
  last = atomic64_cmpxchg(&last_value, last, ret);
 } while (unlikely(last != ret));

 return ret;
}
