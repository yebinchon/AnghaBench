
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ users; int lock; int flags; int wait; } ;


 int ACPI_AML_CLOSED ;
 int ACPI_AML_OPENED ;
 struct file* acpi_aml_active_reader ;
 int acpi_aml_busy () ;
 TYPE_1__ acpi_aml_io ;
 int acpi_aml_used () ;
 int acpi_terminate_debugger () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*) ;
 int wait_event (int ,int) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int acpi_aml_release(struct inode *inode, struct file *file)
{
 mutex_lock(&acpi_aml_io.lock);
 acpi_aml_io.users--;
 if (file == acpi_aml_active_reader) {
  pr_debug("Closing debugger reader.\n");
  acpi_aml_active_reader = ((void*)0);

  pr_debug("Closing debugger interface.\n");
  acpi_aml_io.flags |= ACPI_AML_CLOSED;





  wake_up_interruptible(&acpi_aml_io.wait);
  mutex_unlock(&acpi_aml_io.lock);





  wait_event(acpi_aml_io.wait, !acpi_aml_busy());





  pr_debug("Terminating debugger thread.\n");
  acpi_terminate_debugger();
  wait_event(acpi_aml_io.wait, !acpi_aml_used());
  pr_debug("Debugger thread terminated.\n");

  mutex_lock(&acpi_aml_io.lock);
  acpi_aml_io.flags &= ~ACPI_AML_OPENED;
 }
 if (acpi_aml_io.users == 0) {
  pr_debug("Debugger interface closed.\n");
  acpi_aml_io.flags &= ~ACPI_AML_CLOSED;
 }
 mutex_unlock(&acpi_aml_io.lock);
 return 0;
}
