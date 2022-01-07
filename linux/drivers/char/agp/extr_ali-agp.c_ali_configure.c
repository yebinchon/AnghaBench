
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct aper_size_info_32 {int size_value; } ;
struct TYPE_6__ {int gatt_bus_addr; int gart_bus_addr; scalar_t__ type; TYPE_1__* dev; int current_size; } ;
struct TYPE_5__ {int dev; } ;


 int AGP_APERTURE_BAR ;
 int ALI_ATTBASE ;
 scalar_t__ ALI_M1541 ;
 int ALI_TLBCTRL ;
 struct aper_size_info_32* A_SIZE_32 (int ) ;
 TYPE_4__* agp_bridge ;
 int dev_info (int *,char*,int) ;
 int pci_bus_address (TYPE_1__*,int ) ;
 int pci_read_config_dword (TYPE_1__*,int ,int*) ;
 int pci_write_config_dword (TYPE_1__*,int ,int) ;

__attribute__((used)) static int ali_configure(void)
{
 u32 temp;
 struct aper_size_info_32 *current_size;

 current_size = A_SIZE_32(agp_bridge->current_size);


 pci_read_config_dword(agp_bridge->dev, ALI_ATTBASE, &temp);
 temp = (((temp & 0x00000ff0) | (agp_bridge->gatt_bus_addr & 0xfffff000))
   | (current_size->size_value & 0xf));
 pci_write_config_dword(agp_bridge->dev, ALI_ATTBASE, temp);


 pci_read_config_dword(agp_bridge->dev, ALI_TLBCTRL, &temp);
 pci_write_config_dword(agp_bridge->dev, ALI_TLBCTRL, ((temp & 0xffffff00) | 0x00000010));


 agp_bridge->gart_bus_addr = pci_bus_address(agp_bridge->dev,
          AGP_APERTURE_BAR);
 pci_read_config_dword(agp_bridge->dev, ALI_TLBCTRL, &temp);
 temp &= 0xffffff7f;
 pci_write_config_dword(agp_bridge->dev, ALI_TLBCTRL, temp);

 return 0;
}
