
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dummy; } ;
struct aper_size_info_32 {int size_value; int size; } ;
struct TYPE_6__ {int aperture_size_idx; void* current_size; void* previous_size; TYPE_1__* driver; } ;
struct TYPE_5__ {struct pci_dev* misc; } ;
struct TYPE_4__ {int num_aperture_sizes; } ;


 int AMD64_GARTAPERTURECTL ;
 struct aper_size_info_32* A_SIZE_32 (int ) ;
 TYPE_3__* agp_bridge ;
 int amd64_aperture_sizes ;
 TYPE_2__* node_to_amd_nb (int ) ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;

__attribute__((used)) static int amd64_fetch_size(void)
{
 struct pci_dev *dev;
 int i;
 u32 temp;
 struct aper_size_info_32 *values;

 dev = node_to_amd_nb(0)->misc;
 if (dev==((void*)0))
  return 0;

 pci_read_config_dword(dev, AMD64_GARTAPERTURECTL, &temp);
 temp = (temp & 0xe);
 values = A_SIZE_32(amd64_aperture_sizes);

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
