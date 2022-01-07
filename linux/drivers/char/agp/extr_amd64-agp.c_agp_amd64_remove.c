
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct agp_bridge_data {size_t aperture_size_idx; int gatt_table_real; } ;
struct TYPE_2__ {int size; } ;


 int agp_bridges_found ;
 int agp_put_bridge (struct agp_bridge_data*) ;
 int agp_remove_bridge (struct agp_bridge_data*) ;
 TYPE_1__* amd64_aperture_sizes ;
 struct agp_bridge_data* pci_get_drvdata (struct pci_dev*) ;
 int release_mem_region (int ,int ) ;
 int virt_to_phys (int ) ;

__attribute__((used)) static void agp_amd64_remove(struct pci_dev *pdev)
{
 struct agp_bridge_data *bridge = pci_get_drvdata(pdev);

 release_mem_region(virt_to_phys(bridge->gatt_table_real),
      amd64_aperture_sizes[bridge->aperture_size_idx].size);
 agp_remove_bridge(bridge);
 agp_put_bridge(bridge);

 agp_bridges_found--;
}
