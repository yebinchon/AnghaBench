
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u32 ;
struct timespec64 {int tv_sec; int tv_nsec; } ;
struct pvclock_wall_clock {int version; int sec; int nsec; scalar_t__ sec_hi; } ;
struct shared_info {struct pvclock_wall_clock wc; } ;


 struct shared_info* HYPERVISOR_shared_info ;
 int ktime_get_ts64 (struct timespec64*) ;
 int rmb () ;
 struct timespec64 timespec64_add (struct timespec64,struct timespec64) ;

__attribute__((used)) static void xen_read_wallclock(struct timespec64 *ts)
{
 u32 version;
 struct timespec64 now, ts_monotonic;
 struct shared_info *s = HYPERVISOR_shared_info;
 struct pvclock_wall_clock *wall_clock = &(s->wc);


 do {
  version = wall_clock->version;
  rmb();
  now.tv_sec = ((uint64_t)wall_clock->sec_hi << 32) | wall_clock->sec;
  now.tv_nsec = wall_clock->nsec;
  rmb();
 } while ((wall_clock->version & 1) || (version != wall_clock->version));


 ktime_get_ts64(&ts_monotonic);
 *ts = timespec64_add(now, ts_monotonic);
}
