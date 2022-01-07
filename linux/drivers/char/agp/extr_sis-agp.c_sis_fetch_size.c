
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct aper_size_info_8 {int size_value; int size; } ;
struct TYPE_4__ {int aperture_size_idx; void* current_size; void* previous_size; TYPE_1__* driver; int dev; } ;
struct TYPE_3__ {int num_aperture_sizes; int aperture_sizes; } ;


 struct aper_size_info_8* A_SIZE_8 (int ) ;
 int SIS_APSIZE ;
 TYPE_2__* agp_bridge ;
 int pci_read_config_byte (int ,int ,int*) ;

__attribute__((used)) static int sis_fetch_size(void)
{
 u8 temp_size;
 int i;
 struct aper_size_info_8 *values;

 pci_read_config_byte(agp_bridge->dev, SIS_APSIZE, &temp_size);
 values = A_SIZE_8(agp_bridge->driver->aperture_sizes);
 for (i = 0; i < agp_bridge->driver->num_aperture_sizes; i++) {
  if ((temp_size == values[i].size_value) ||
      ((temp_size & ~(0x07)) ==
       (values[i].size_value & ~(0x07)))) {
   agp_bridge->previous_size =
       agp_bridge->current_size = (void *) (values + i);

   agp_bridge->aperture_size_idx = i;
   return values[i].size;
  }
 }

 return 0;
}
