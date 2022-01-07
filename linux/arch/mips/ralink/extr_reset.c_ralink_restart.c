
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_PCI ;
 scalar_t__ IS_ENABLED (int ) ;
 int RSTCTL_RESET_PCI ;
 int RSTCTL_RESET_SYSTEM ;
 int SYSC_REG_RESET_CTRL ;
 int local_irq_disable () ;
 int mdelay (int) ;
 int rt_sysc_m32 (int ,int ,int ) ;
 int rt_sysc_w32 (int ,int ) ;
 int unreachable () ;

__attribute__((used)) static void ralink_restart(char *command)
{
 if (IS_ENABLED(CONFIG_PCI)) {
  rt_sysc_m32(0, RSTCTL_RESET_PCI, SYSC_REG_RESET_CTRL);
  mdelay(50);
 }

 local_irq_disable();
 rt_sysc_w32(RSTCTL_RESET_SYSTEM, SYSC_REG_RESET_CTRL);
 unreachable();
}
