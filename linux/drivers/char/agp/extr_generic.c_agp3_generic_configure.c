
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct aper_size_info_16 {int size_value; } ;
struct TYPE_2__ {int gatt_bus_addr; scalar_t__ capndx; int dev; int gart_bus_addr; int current_size; } ;


 scalar_t__ AGPAPSIZE ;
 scalar_t__ AGPCTRL ;
 int AGPCTRL_APERENB ;
 int AGPCTRL_GTLBEN ;
 scalar_t__ AGPGARTLO ;
 int AGP_APERTURE_BAR ;
 struct aper_size_info_16* A_SIZE_16 (int ) ;
 TYPE_1__* agp_bridge ;
 int pci_bus_address (int ,int ) ;
 int pci_read_config_dword (int ,scalar_t__,int*) ;
 int pci_write_config_dword (int ,scalar_t__,int) ;
 int pci_write_config_word (int ,scalar_t__,int ) ;

int agp3_generic_configure(void)
{
 u32 temp;
 struct aper_size_info_16 *current_size;

 current_size = A_SIZE_16(agp_bridge->current_size);

 agp_bridge->gart_bus_addr = pci_bus_address(agp_bridge->dev,
          AGP_APERTURE_BAR);


 pci_write_config_word(agp_bridge->dev, agp_bridge->capndx+AGPAPSIZE, current_size->size_value);

 pci_write_config_dword(agp_bridge->dev, agp_bridge->capndx+AGPGARTLO, agp_bridge->gatt_bus_addr);

 pci_read_config_dword(agp_bridge->dev, agp_bridge->capndx+AGPCTRL, &temp);
 pci_write_config_dword(agp_bridge->dev, agp_bridge->capndx+AGPCTRL, temp | AGPCTRL_APERENB | AGPCTRL_GTLBEN);
 return 0;
}
