
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;
 int SHUTDOWN_crash ;
 int kexec_crash_loaded () ;
 int panic_timeout ;
 int reboot_reason ;
 scalar_t__ xen_legacy_crash ;
 int xen_reboot (int ) ;

__attribute__((used)) static int
xen_panic_event(struct notifier_block *this, unsigned long event, void *ptr)
{
 if (!kexec_crash_loaded()) {
  if (xen_legacy_crash)
   xen_reboot(SHUTDOWN_crash);

  reboot_reason = SHUTDOWN_crash;







  if (panic_timeout == 0)
   panic_timeout = -1;
 }
 return NOTIFY_DONE;
}
