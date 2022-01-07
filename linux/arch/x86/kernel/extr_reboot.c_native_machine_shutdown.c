
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* iommu_shutdown ) () ;} ;


 int clear_IO_APIC () ;
 int hpet_disable () ;
 int lapic_shutdown () ;
 int local_irq_disable () ;
 int restore_boot_irq_mode () ;
 int stop_other_cpus () ;
 int stub1 () ;
 TYPE_1__ x86_platform ;

void native_machine_shutdown(void)
{
 lapic_shutdown();
 restore_boot_irq_mode();
}
