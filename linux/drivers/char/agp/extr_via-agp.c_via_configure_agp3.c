
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct aper_size_info_16 {int dummy; } ;
struct TYPE_2__ {int gatt_bus_addr; int dev; int gart_bus_addr; int current_size; } ;


 int AGP_APERTURE_BAR ;
 struct aper_size_info_16* A_SIZE_16 (int ) ;
 int VIA_AGP3_ATTBASE ;
 int VIA_AGP3_GARTCTRL ;
 TYPE_1__* agp_bridge ;
 int pci_bus_address (int ,int ) ;
 int pci_read_config_dword (int ,int ,int*) ;
 int pci_write_config_dword (int ,int ,int) ;

__attribute__((used)) static int via_configure_agp3(void)
{
 u32 temp;
 struct aper_size_info_16 *current_size;

 current_size = A_SIZE_16(agp_bridge->current_size);


 agp_bridge->gart_bus_addr = pci_bus_address(agp_bridge->dev,
          AGP_APERTURE_BAR);


 pci_write_config_dword(agp_bridge->dev, VIA_AGP3_ATTBASE,
  agp_bridge->gatt_bus_addr & 0xfffff000);






 pci_read_config_dword(agp_bridge->dev, VIA_AGP3_GARTCTRL, &temp);
 pci_write_config_dword(agp_bridge->dev, VIA_AGP3_GARTCTRL, temp | (3<<7));
 return 0;
}
