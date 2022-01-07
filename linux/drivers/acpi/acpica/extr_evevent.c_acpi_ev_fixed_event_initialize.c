
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
typedef int acpi_status ;
struct TYPE_4__ {int * context; int * handler; } ;
struct TYPE_3__ {int enable_register_id; } ;


 int ACPI_DISABLE_EVENT ;
 scalar_t__ ACPI_FAILURE (int ) ;
 size_t ACPI_NUM_FIXED_EVENTS ;
 int AE_OK ;
 TYPE_2__* acpi_gbl_fixed_event_handlers ;
 TYPE_1__* acpi_gbl_fixed_event_info ;
 int acpi_write_bit_register (int,int ) ;

__attribute__((used)) static acpi_status acpi_ev_fixed_event_initialize(void)
{
 u32 i;
 acpi_status status;





 for (i = 0; i < ACPI_NUM_FIXED_EVENTS; i++) {
  acpi_gbl_fixed_event_handlers[i].handler = ((void*)0);
  acpi_gbl_fixed_event_handlers[i].context = ((void*)0);



  if (acpi_gbl_fixed_event_info[i].enable_register_id != 0xFF) {
   status =
       acpi_write_bit_register(acpi_gbl_fixed_event_info
          [i].enable_register_id,
          ACPI_DISABLE_EVENT);
   if (ACPI_FAILURE(status)) {
    return (status);
   }
  }
 }

 return (AE_OK);
}
