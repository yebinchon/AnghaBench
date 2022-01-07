
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ s64 ;
struct TYPE_2__ {int tolerant; int monarch_timeout; } ;


 scalar_t__ SPINUNIT ;
 scalar_t__ atomic_read (int *) ;
 int cpu_missing ;
 TYPE_1__ mca_cfg ;
 int mce_panic (char const*,int *,int *) ;
 int mce_panicked ;
 int rmb () ;
 int touch_nmi_watchdog () ;
 int wait_for_panic () ;

__attribute__((used)) static int mce_timed_out(u64 *t, const char *msg)
{






 rmb();
 if (atomic_read(&mce_panicked))
  wait_for_panic();
 if (!mca_cfg.monarch_timeout)
  goto out;
 if ((s64)*t < SPINUNIT) {
  if (mca_cfg.tolerant <= 1)
   mce_panic(msg, ((void*)0), ((void*)0));
  cpu_missing = 1;
  return 1;
 }
 *t -= SPINUNIT;
out:
 touch_nmi_watchdog();
 return 0;
}
