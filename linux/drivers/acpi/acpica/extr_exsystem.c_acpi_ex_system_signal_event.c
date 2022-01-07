
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int os_semaphore; } ;
union acpi_operand_object {TYPE_1__ event; } ;
typedef int acpi_status ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int AE_OK ;
 int acpi_os_signal_semaphore (int ,int) ;
 int ex_system_signal_event ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_ex_system_signal_event(union acpi_operand_object * obj_desc)
{
 acpi_status status = AE_OK;

 ACPI_FUNCTION_TRACE(ex_system_signal_event);

 if (obj_desc) {
  status =
      acpi_os_signal_semaphore(obj_desc->event.os_semaphore, 1);
 }

 return_ACPI_STATUS(status);
}
