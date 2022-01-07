
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct aper_size_info_32 {int size_value; int size; } ;
struct TYPE_4__ {int aperture_size_idx; void* current_size; void* previous_size; TYPE_1__* driver; int dev; } ;
struct TYPE_3__ {int num_aperture_sizes; int aperture_sizes; } ;


 int ALI_ATTBASE ;
 struct aper_size_info_32* A_SIZE_32 (int ) ;
 TYPE_2__* agp_bridge ;
 int pci_read_config_dword (int ,int ,int*) ;

__attribute__((used)) static int ali_fetch_size(void)
{
 int i;
 u32 temp;
 struct aper_size_info_32 *values;

 pci_read_config_dword(agp_bridge->dev, ALI_ATTBASE, &temp);
 temp &= ~(0xfffffff0);
 values = A_SIZE_32(agp_bridge->driver->aperture_sizes);

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
