
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aper_size_info_8 {int size_value; } ;
struct TYPE_2__ {int gatt_bus_addr; int dev; int gart_bus_addr; int current_size; } ;


 int AGP_APERTURE_BAR ;
 struct aper_size_info_8* A_SIZE_8 (int ) ;
 int VIA_APSIZE ;
 int VIA_ATTBASE ;
 int VIA_GARTCTRL ;
 TYPE_1__* agp_bridge ;
 int pci_bus_address (int ,int ) ;
 int pci_write_config_byte (int ,int ,int ) ;
 int pci_write_config_dword (int ,int ,int) ;

__attribute__((used)) static int via_configure(void)
{
 struct aper_size_info_8 *current_size;

 current_size = A_SIZE_8(agp_bridge->current_size);

 pci_write_config_byte(agp_bridge->dev, VIA_APSIZE,
         current_size->size_value);

 agp_bridge->gart_bus_addr = pci_bus_address(agp_bridge->dev,
          AGP_APERTURE_BAR);


 pci_write_config_dword(agp_bridge->dev, VIA_GARTCTRL, 0x0000000f);


 pci_write_config_dword(agp_bridge->dev, VIA_ATTBASE,
       (agp_bridge->gatt_bus_addr & 0xfffff000) | 3);
 return 0;
}
