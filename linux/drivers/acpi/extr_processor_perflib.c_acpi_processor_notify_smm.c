
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int acpi_processor_cpufreq_init ;
 int acpi_processor_ppc_in_use ;
 int acpi_processor_pstate_control () ;
 int module_put (struct module*) ;
 int try_module_get (struct module*) ;

int acpi_processor_notify_smm(struct module *calling_module)
{
 static int is_done = 0;
 int result;

 if (!acpi_processor_cpufreq_init)
  return -EBUSY;

 if (!try_module_get(calling_module))
  return -EINVAL;






 if (is_done > 0) {
  module_put(calling_module);
  return 0;
 } else if (is_done < 0) {
  module_put(calling_module);
  return is_done;
 }

 is_done = -EIO;

 result = acpi_processor_pstate_control();
 if (!result) {
  ACPI_DEBUG_PRINT((ACPI_DB_INFO, "No SMI port or pstate_control\n"));
  module_put(calling_module);
  return 0;
 }
 if (result < 0) {
  module_put(calling_module);
  return result;
 }



 is_done = 1;

 if (!acpi_processor_ppc_in_use)
  module_put(calling_module);

 return 0;
}
