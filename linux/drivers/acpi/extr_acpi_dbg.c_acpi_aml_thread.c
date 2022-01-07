
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int (* acpi_osd_exec_callback ) (void*) ;
struct TYPE_2__ {int lock; int wait; int * thread; int usages; void* context; int (* function ) (void*) ;} ;


 int __acpi_aml_used () ;
 TYPE_1__ acpi_aml_io ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static int acpi_aml_thread(void *unused)
{
 acpi_osd_exec_callback function = ((void*)0);
 void *context;

 mutex_lock(&acpi_aml_io.lock);
 if (acpi_aml_io.function) {
  acpi_aml_io.usages++;
  function = acpi_aml_io.function;
  context = acpi_aml_io.context;
 }
 mutex_unlock(&acpi_aml_io.lock);

 if (function)
  function(context);

 mutex_lock(&acpi_aml_io.lock);
 acpi_aml_io.usages--;
 if (!__acpi_aml_used()) {
  acpi_aml_io.thread = ((void*)0);
  wake_up(&acpi_aml_io.wait);
 }
 mutex_unlock(&acpi_aml_io.lock);

 return 0;
}
