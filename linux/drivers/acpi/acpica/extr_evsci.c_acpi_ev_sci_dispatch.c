
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_sci_handler_info {struct acpi_sci_handler_info* next; int context; int (* address ) (int ) ;} ;
typedef int acpi_cpu_flags ;


 int ACPI_FUNCTION_NAME (int ) ;
 int ACPI_INTERRUPT_NOT_HANDLED ;
 int acpi_gbl_gpe_lock ;
 struct acpi_sci_handler_info* acpi_gbl_sci_handler_list ;
 int acpi_os_acquire_lock (int ) ;
 int acpi_os_release_lock (int ,int ) ;
 int ev_sci_dispatch ;
 int stub1 (int ) ;

u32 acpi_ev_sci_dispatch(void)
{
 struct acpi_sci_handler_info *sci_handler;
 acpi_cpu_flags flags;
 u32 int_status = ACPI_INTERRUPT_NOT_HANDLED;

 ACPI_FUNCTION_NAME(ev_sci_dispatch);



 if (!acpi_gbl_sci_handler_list) {
  return (int_status);
 }

 flags = acpi_os_acquire_lock(acpi_gbl_gpe_lock);



 sci_handler = acpi_gbl_sci_handler_list;
 while (sci_handler) {



  int_status |= sci_handler->address(sci_handler->context);

  sci_handler = sci_handler->next;
 }

 acpi_os_release_lock(acpi_gbl_gpe_lock, flags);
 return (int_status);
}
