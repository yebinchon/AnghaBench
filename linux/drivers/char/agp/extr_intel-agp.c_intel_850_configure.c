
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct aper_size_info_8 {int size_value; } ;
struct TYPE_2__ {int gatt_bus_addr; int dev; int gart_bus_addr; int current_size; } ;


 int AGP_APERTURE_BAR ;
 struct aper_size_info_8* A_SIZE_8 (int ) ;
 int INTEL_AGPCTRL ;
 int INTEL_APSIZE ;
 int INTEL_ATTBASE ;
 int INTEL_I850_ERRSTS ;
 int INTEL_I850_MCHCFG ;
 TYPE_1__* agp_bridge ;
 int pci_bus_address (int ,int ) ;
 int pci_read_config_word (int ,int ,int*) ;
 int pci_write_config_byte (int ,int ,int ) ;
 int pci_write_config_dword (int ,int ,int) ;
 int pci_write_config_word (int ,int ,int) ;

__attribute__((used)) static int intel_850_configure(void)
{
 u16 temp2;
 struct aper_size_info_8 *current_size;

 current_size = A_SIZE_8(agp_bridge->current_size);


 pci_write_config_byte(agp_bridge->dev, INTEL_APSIZE, current_size->size_value);


 agp_bridge->gart_bus_addr = pci_bus_address(agp_bridge->dev,
          AGP_APERTURE_BAR);


 pci_write_config_dword(agp_bridge->dev, INTEL_ATTBASE, agp_bridge->gatt_bus_addr);


 pci_write_config_dword(agp_bridge->dev, INTEL_AGPCTRL, 0x0000);


 pci_read_config_word(agp_bridge->dev, INTEL_I850_MCHCFG, &temp2);
 pci_write_config_word(agp_bridge->dev, INTEL_I850_MCHCFG, temp2 | (1 << 9));

 pci_write_config_word(agp_bridge->dev, INTEL_I850_ERRSTS, 0x001c);
 return 0;
}
