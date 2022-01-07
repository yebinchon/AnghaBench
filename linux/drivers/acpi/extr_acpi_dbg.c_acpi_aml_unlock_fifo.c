
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long flags; int lock; int wait; } ;


 TYPE_1__ acpi_aml_io ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void acpi_aml_unlock_fifo(unsigned long flag, bool wakeup)
{
 mutex_lock(&acpi_aml_io.lock);
 acpi_aml_io.flags &= ~flag;
 if (wakeup)
  wake_up_interruptible(&acpi_aml_io.wait);
 mutex_unlock(&acpi_aml_io.lock);
}
