
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct acpi_gpe_event_info {int gpe_number; TYPE_1__* register_info; } ;
struct TYPE_2__ {int base_gpe_number; } ;



u32 acpi_hw_get_gpe_register_bit(struct acpi_gpe_event_info *gpe_event_info)
{

 return ((u32)1 <<
  (gpe_event_info->gpe_number -
   gpe_event_info->register_info->base_gpe_number));
}
