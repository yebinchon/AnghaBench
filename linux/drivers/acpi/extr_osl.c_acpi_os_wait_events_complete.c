
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int acpi_sci_irq ;
 scalar_t__ acpi_sci_irq_valid () ;
 int flush_workqueue (int ) ;
 int kacpi_notify_wq ;
 int kacpid_wq ;
 int synchronize_hardirq (int ) ;

void acpi_os_wait_events_complete(void)
{




 if (acpi_sci_irq_valid())
  synchronize_hardirq(acpi_sci_irq);
 flush_workqueue(kacpid_wq);
 flush_workqueue(kacpi_notify_wq);
}
