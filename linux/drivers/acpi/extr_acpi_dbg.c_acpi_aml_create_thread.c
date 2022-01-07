
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
typedef int acpi_thread_id ;
typedef int acpi_osd_exec_callback ;
struct TYPE_2__ {int lock; struct task_struct* thread; void* context; int function; } ;


 scalar_t__ IS_ERR (struct task_struct*) ;
 int PTR_ERR (struct task_struct*) ;
 TYPE_1__ acpi_aml_io ;
 int acpi_aml_thread ;
 int acpi_set_debugger_thread_id (int ) ;
 struct task_struct* kthread_create (int ,int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;
 int wake_up_process (struct task_struct*) ;

__attribute__((used)) static int acpi_aml_create_thread(acpi_osd_exec_callback function, void *context)
{
 struct task_struct *t;

 mutex_lock(&acpi_aml_io.lock);
 acpi_aml_io.function = function;
 acpi_aml_io.context = context;
 mutex_unlock(&acpi_aml_io.lock);

 t = kthread_create(acpi_aml_thread, ((void*)0), "aml");
 if (IS_ERR(t)) {
  pr_err("Failed to create AML debugger thread.\n");
  return PTR_ERR(t);
 }

 mutex_lock(&acpi_aml_io.lock);
 acpi_aml_io.thread = t;
 acpi_set_debugger_thread_id((acpi_thread_id)(unsigned long)t);
 wake_up_process(t);
 mutex_unlock(&acpi_aml_io.lock);
 return 0;
}
