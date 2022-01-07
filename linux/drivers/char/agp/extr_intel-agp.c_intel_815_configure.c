
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct aper_size_info_8 {int size_value; } ;
struct TYPE_8__ {int gatt_bus_addr; TYPE_1__* dev; int gart_bus_addr; int current_size; } ;
struct TYPE_7__ {int dev; } ;


 int AGP_APERTURE_BAR ;
 struct aper_size_info_8* A_SIZE_8 (int ) ;
 int EINVAL ;
 int INTEL_815_APCONT ;
 int INTEL_815_ATTBASE_MASK ;
 int INTEL_AGPCTRL ;
 int INTEL_APSIZE ;
 int INTEL_ATTBASE ;
 TYPE_6__* agp_bridge ;
 int dev_emerg (int *,char*) ;
 int pci_bus_address (TYPE_1__*,int ) ;
 int pci_read_config_byte (TYPE_1__*,int ,int*) ;
 int pci_read_config_dword (TYPE_1__*,int ,int*) ;
 int pci_write_config_byte (TYPE_1__*,int ,int) ;
 int pci_write_config_dword (TYPE_1__*,int ,int) ;

__attribute__((used)) static int intel_815_configure(void)
{
 u32 addr;
 u8 temp2;
 struct aper_size_info_8 *current_size;




 if (agp_bridge->gatt_bus_addr & INTEL_815_ATTBASE_MASK) {
  dev_emerg(&agp_bridge->dev->dev, "gatt bus addr too high");
  return -EINVAL;
 }

 current_size = A_SIZE_8(agp_bridge->current_size);


 pci_write_config_byte(agp_bridge->dev, INTEL_APSIZE,
   current_size->size_value);


 agp_bridge->gart_bus_addr = pci_bus_address(agp_bridge->dev,
          AGP_APERTURE_BAR);

 pci_read_config_dword(agp_bridge->dev, INTEL_ATTBASE, &addr);
 addr &= INTEL_815_ATTBASE_MASK;
 addr |= agp_bridge->gatt_bus_addr;
 pci_write_config_dword(agp_bridge->dev, INTEL_ATTBASE, addr);


 pci_write_config_dword(agp_bridge->dev, INTEL_AGPCTRL, 0x0000);


 pci_read_config_byte(agp_bridge->dev, INTEL_815_APCONT, &temp2);
 pci_write_config_byte(agp_bridge->dev, INTEL_815_APCONT, temp2 | (1 << 1));



 return 0;
}
