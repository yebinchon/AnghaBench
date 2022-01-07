
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct aper_size_info_lvl2 {scalar_t__ size_value; int size; } ;
struct TYPE_4__ {int aperture_size_idx; void* current_size; void* previous_size; TYPE_1__* driver; int dev; } ;
struct TYPE_3__ {int num_aperture_sizes; int aperture_sizes; } ;


 struct aper_size_info_lvl2* A_SIZE_LVL2 (int ) ;
 int INTEL_APSIZE ;
 TYPE_2__* agp_bridge ;
 int pci_read_config_word (int ,int ,scalar_t__*) ;

__attribute__((used)) static int efficeon_fetch_size(void)
{
 int i;
 u16 temp;
 struct aper_size_info_lvl2 *values;

 pci_read_config_word(agp_bridge->dev, INTEL_APSIZE, &temp);
 values = A_SIZE_LVL2(agp_bridge->driver->aperture_sizes);

 for (i = 0; i < agp_bridge->driver->num_aperture_sizes; i++) {
  if (temp == values[i].size_value) {
   agp_bridge->previous_size =
       agp_bridge->current_size = (void *) (values + i);
   agp_bridge->aperture_size_idx = i;
   return values[i].size;
  }
 }

 return 0;
}
