
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct acpi_gpe_event_info {int dummy; } ;
struct acpi_gpe_block_info {scalar_t__ block_base_number; scalar_t__ gpe_count; struct acpi_gpe_event_info* event_info; } ;



struct acpi_gpe_event_info *acpi_ev_low_get_gpe_info(u32 gpe_number,
           struct acpi_gpe_block_info
           *gpe_block)
{
 u32 gpe_index;





 if (!gpe_block || (gpe_number < gpe_block->block_base_number)) {
  return (((void*)0));
 }

 gpe_index = gpe_number - gpe_block->block_base_number;
 if (gpe_index >= gpe_block->gpe_count) {
  return (((void*)0));
 }

 return (&gpe_block->event_info[gpe_index]);
}
