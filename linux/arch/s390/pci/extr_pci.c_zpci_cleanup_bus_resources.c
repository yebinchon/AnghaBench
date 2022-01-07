
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zpci_dev {TYPE_1__* bars; } ;
struct TYPE_2__ {int res; int map_idx; int size; } ;


 int PCI_BAR_COUNT ;
 int kfree (int ) ;
 int release_resource (int ) ;
 int zpci_free_iomap (struct zpci_dev*,int ) ;

__attribute__((used)) static void zpci_cleanup_bus_resources(struct zpci_dev *zdev)
{
 int i;

 for (i = 0; i < PCI_BAR_COUNT; i++) {
  if (!zdev->bars[i].size || !zdev->bars[i].res)
   continue;

  zpci_free_iomap(zdev, zdev->bars[i].map_idx);
  release_resource(zdev->bars[i].res);
  kfree(zdev->bars[i].res);
 }
}
