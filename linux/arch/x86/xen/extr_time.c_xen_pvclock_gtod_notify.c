
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int secs; long nsecs; void* system_time; } ;
struct TYPE_6__ {int secs; long nsecs; void* system_time; scalar_t__ mbz; } ;
struct TYPE_8__ {TYPE_3__ settime32; TYPE_2__ settime64; } ;
struct xen_platform_op {TYPE_4__ u; int cmd; } ;
struct timespec64 {int tv_sec; long tv_nsec; } ;
struct TYPE_5__ {int xtime_nsec; int shift; } ;
struct timekeeper {int xtime_sec; TYPE_1__ tkr_mono; } ;
struct notifier_block {int dummy; } ;


 int ENOSYS ;
 int HYPERVISOR_platform_op (struct xen_platform_op*) ;
 int NOTIFY_BAD ;
 int NOTIFY_OK ;
 int XENPF_settime32 ;
 int XENPF_settime64 ;
 scalar_t__ timespec64_compare (struct timespec64*,struct timespec64*) ;
 void* xen_clocksource_read () ;

__attribute__((used)) static int xen_pvclock_gtod_notify(struct notifier_block *nb,
       unsigned long was_set, void *priv)
{

 static struct timespec64 next_sync;

 struct xen_platform_op op;
 struct timespec64 now;
 struct timekeeper *tk = priv;
 static bool settime64_supported = 1;
 int ret;

 now.tv_sec = tk->xtime_sec;
 now.tv_nsec = (long)(tk->tkr_mono.xtime_nsec >> tk->tkr_mono.shift);





 if (!was_set && timespec64_compare(&now, &next_sync) < 0)
  return NOTIFY_OK;

again:
 if (settime64_supported) {
  op.cmd = XENPF_settime64;
  op.u.settime64.mbz = 0;
  op.u.settime64.secs = now.tv_sec;
  op.u.settime64.nsecs = now.tv_nsec;
  op.u.settime64.system_time = xen_clocksource_read();
 } else {
  op.cmd = XENPF_settime32;
  op.u.settime32.secs = now.tv_sec;
  op.u.settime32.nsecs = now.tv_nsec;
  op.u.settime32.system_time = xen_clocksource_read();
 }

 ret = HYPERVISOR_platform_op(&op);

 if (ret == -ENOSYS && settime64_supported) {
  settime64_supported = 0;
  goto again;
 }
 if (ret < 0)
  return NOTIFY_BAD;






 next_sync = now;
 next_sync.tv_sec += 11 * 60;

 return NOTIFY_OK;
}
