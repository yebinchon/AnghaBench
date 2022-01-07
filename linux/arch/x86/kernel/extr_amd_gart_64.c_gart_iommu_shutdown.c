
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {struct pci_dev* misc; } ;


 int AMD64_GARTAPERTURECTL ;
 int AMD_NB_GART ;
 int GARTEN ;
 int amd_nb_has_feature (int ) ;
 int amd_nb_num () ;
 int no_agp ;
 TYPE_1__* node_to_amd_nb (int) ;
 int pci_read_config_dword (struct pci_dev*,int ,int *) ;
 int pci_write_config_dword (struct pci_dev*,int ,int ) ;

__attribute__((used)) static void gart_iommu_shutdown(void)
{
 struct pci_dev *dev;
 int i;


 if (!no_agp)
  return;

 if (!amd_nb_has_feature(AMD_NB_GART))
  return;

 for (i = 0; i < amd_nb_num(); i++) {
  u32 ctl;

  dev = node_to_amd_nb(i)->misc;
  pci_read_config_dword(dev, AMD64_GARTAPERTURECTL, &ctl);

  ctl &= ~GARTEN;

  pci_write_config_dword(dev, AMD64_GARTAPERTURECTL, ctl);
 }
}
