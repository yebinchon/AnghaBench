
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct agp_bridge_data {int dummy; } ;


 int agp_put_bridge (struct agp_bridge_data*) ;
 int agp_remove_bridge (struct agp_bridge_data*) ;
 struct agp_bridge_data* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void agp_nvidia_remove(struct pci_dev *pdev)
{
 struct agp_bridge_data *bridge = pci_get_drvdata(pdev);

 agp_remove_bridge(bridge);
 agp_put_bridge(bridge);
}
