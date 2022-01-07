
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_spinlock ;
typedef int acpi_cpu_flags ;


 int spin_lock_irqsave (int ,int ) ;

acpi_cpu_flags acpi_os_acquire_lock(acpi_spinlock lockp)
{
 acpi_cpu_flags flags;
 spin_lock_irqsave(lockp, flags);
 return flags;
}
