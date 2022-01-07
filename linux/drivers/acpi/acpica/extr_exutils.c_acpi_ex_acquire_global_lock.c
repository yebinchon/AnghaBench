
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int acpi_status ;


 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_WAIT_FOREVER ;
 int AE_INFO ;
 int AML_FIELD_LOCK_RULE_MASK ;
 int acpi_ex_acquire_mutex_object (int ,int ,int ) ;
 int acpi_gbl_global_lock_mutex ;
 int acpi_os_get_thread_id () ;
 int ex_acquire_global_lock ;
 int return_VOID ;

void acpi_ex_acquire_global_lock(u32 field_flags)
{
 acpi_status status;

 ACPI_FUNCTION_TRACE(ex_acquire_global_lock);



 if (!(field_flags & AML_FIELD_LOCK_RULE_MASK)) {
  return_VOID;
 }



 status = acpi_ex_acquire_mutex_object(ACPI_WAIT_FOREVER,
           acpi_gbl_global_lock_mutex,
           acpi_os_get_thread_id());

 if (ACPI_FAILURE(status)) {
  ACPI_EXCEPTION((AE_INFO, status,
    "Could not acquire Global Lock"));
 }

 return_VOID;
}
