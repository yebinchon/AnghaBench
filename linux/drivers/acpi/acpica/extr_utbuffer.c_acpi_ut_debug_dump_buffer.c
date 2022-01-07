
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int ACPI_LV_TABLES ;
 int acpi_dbg_layer ;
 int acpi_dbg_level ;
 int acpi_ut_dump_buffer (int *,int,int,int ) ;

void
acpi_ut_debug_dump_buffer(u8 *buffer, u32 count, u32 display, u32 component_id)
{



 if (!((ACPI_LV_TABLES & acpi_dbg_level) &&
       (component_id & acpi_dbg_layer))) {
  return;
 }

 acpi_ut_dump_buffer(buffer, count, display, 0);
}
