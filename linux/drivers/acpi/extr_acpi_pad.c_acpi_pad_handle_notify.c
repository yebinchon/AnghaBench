
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct acpi_buffer {int length; void* pointer; } ;
typedef int acpi_handle ;


 int ACPI_PROCESSOR_AGGREGATOR_NOTIFY ;
 int acpi_evaluate_ost (int ,int ,int ,struct acpi_buffer*) ;
 int acpi_pad_idle_cpus (int) ;
 int acpi_pad_idle_cpus_num () ;
 int acpi_pad_pur (int ) ;
 int isolated_cpus_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void acpi_pad_handle_notify(acpi_handle handle)
{
 int num_cpus;
 uint32_t idle_cpus;
 struct acpi_buffer param = {
  .length = 4,
  .pointer = (void *)&idle_cpus,
 };

 mutex_lock(&isolated_cpus_lock);
 num_cpus = acpi_pad_pur(handle);
 if (num_cpus < 0) {
  mutex_unlock(&isolated_cpus_lock);
  return;
 }
 acpi_pad_idle_cpus(num_cpus);
 idle_cpus = acpi_pad_idle_cpus_num();
 acpi_evaluate_ost(handle, ACPI_PROCESSOR_AGGREGATOR_NOTIFY, 0, &param);
 mutex_unlock(&isolated_cpus_lock);
}
