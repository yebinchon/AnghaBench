
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dev; } ;
struct TYPE_2__ {struct pci_dev* misc; } ;


 int AMD_NB_GART ;
 int ENODEV ;
 scalar_t__ amd_cache_northbridges () ;
 int amd_nb_has_feature (int ) ;
 int amd_nb_num () ;
 int dev_err (int *,char*) ;
 scalar_t__ fix_northbridge (struct pci_dev*,struct pci_dev*,int ) ;
 TYPE_1__* node_to_amd_nb (int) ;

__attribute__((used)) static int cache_nbs(struct pci_dev *pdev, u32 cap_ptr)
{
 int i;

 if (amd_cache_northbridges() < 0)
  return -ENODEV;

 if (!amd_nb_has_feature(AMD_NB_GART))
  return -ENODEV;

 i = 0;
 for (i = 0; i < amd_nb_num(); i++) {
  struct pci_dev *dev = node_to_amd_nb(i)->misc;
  if (fix_northbridge(dev, pdev, cap_ptr) < 0) {
   dev_err(&dev->dev, "no usable aperture found\n");


   dev_err(&dev->dev, "consider rebooting with iommu=memaper=2 to get a good aperture\n");

   return -1;
  }
 }
 return 0;
}
