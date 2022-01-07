
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct agp_bridge_data {int * dev; } ;
struct TYPE_2__ {int * svrwrks_dev; } ;


 int agp_put_bridge (struct agp_bridge_data*) ;
 int agp_remove_bridge (struct agp_bridge_data*) ;
 int pci_dev_put (int *) ;
 struct agp_bridge_data* pci_get_drvdata (struct pci_dev*) ;
 TYPE_1__ serverworks_private ;

__attribute__((used)) static void agp_serverworks_remove(struct pci_dev *pdev)
{
 struct agp_bridge_data *bridge = pci_get_drvdata(pdev);

 pci_dev_put(bridge->dev);
 agp_remove_bridge(bridge);
 agp_put_bridge(bridge);
 pci_dev_put(serverworks_private.svrwrks_dev);
 serverworks_private.svrwrks_dev = ((void*)0);
}
