
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {struct pci_dev* misc; } ;


 int AMD64_GARTAPERTUREBASE ;
 int AMD_NB_GART ;
 int amd_nb_has_feature (int ) ;
 int amd_nb_num () ;
 int aperture_alloc ;
 int aperture_order ;
 int fix_up_north_bridges ;
 int gart_set_size_and_enable (struct pci_dev*,int ) ;
 TYPE_1__* node_to_amd_nb (int) ;
 int pci_write_config_dword (struct pci_dev*,int ,int) ;
 int pr_info (char*) ;

__attribute__((used)) static void gart_fixup_northbridges(void)
{
 int i;

 if (!fix_up_north_bridges)
  return;

 if (!amd_nb_has_feature(AMD_NB_GART))
  return;

 pr_info("PCI-DMA: Restoring GART aperture settings\n");

 for (i = 0; i < amd_nb_num(); i++) {
  struct pci_dev *dev = node_to_amd_nb(i)->misc;





  gart_set_size_and_enable(dev, aperture_order);
  pci_write_config_dword(dev, AMD64_GARTAPERTUREBASE, aperture_alloc >> 25);
 }
}
