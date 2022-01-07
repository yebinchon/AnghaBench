
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int SHUTDOWN_crash ;
 int xen_reboot (int ) ;

__attribute__((used)) static void xen_crash_shutdown(struct pt_regs *regs)
{
 xen_reboot(SHUTDOWN_crash);
}
