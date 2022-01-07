
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct aper_size_info_32 {int size_value; } ;
struct TYPE_4__ {int gatt_bus_addr; int gart_bus_addr; int scratch_page_page; TYPE_1__* dev; int current_size; } ;
struct TYPE_3__ {int dev; } ;


 struct aper_size_info_32* A_SIZE_32 (int ) ;
 int UNI_N_CFG_AGP_BASE ;
 int UNI_N_CFG_GART_BASE ;
 int UNI_N_CFG_GART_DUMMY_PAGE ;
 TYPE_2__* agp_bridge ;
 int dev_info (int *,char*,int) ;
 scalar_t__ is_u3 ;
 int page_to_phys (int ) ;
 int pci_write_config_dword (TYPE_1__*,int ,int) ;

__attribute__((used)) static int uninorth_configure(void)
{
 struct aper_size_info_32 *current_size;

 current_size = A_SIZE_32(agp_bridge->current_size);

 dev_info(&agp_bridge->dev->dev, "configuring for size idx: %d\n",
   current_size->size_value);


 pci_write_config_dword(agp_bridge->dev,
  UNI_N_CFG_GART_BASE,
  (agp_bridge->gatt_bus_addr & 0xfffff000)
   | current_size->size_value);





 agp_bridge->gart_bus_addr = 0;






 pci_write_config_dword(agp_bridge->dev,
  UNI_N_CFG_AGP_BASE, agp_bridge->gart_bus_addr);


 if (is_u3) {
  pci_write_config_dword(agp_bridge->dev,
           UNI_N_CFG_GART_DUMMY_PAGE,
           page_to_phys(agp_bridge->scratch_page_page) >> 12);
 }

 return 0;
}
