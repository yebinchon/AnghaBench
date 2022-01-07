
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta2x11_mapping {int dummy; } ;
struct sta2x11_instance {struct sta2x11_mapping* map; } ;
struct pci_dev {int dummy; } ;


 int sta2x11_pdev_to_ep (struct pci_dev*) ;
 struct sta2x11_instance* sta2x11_pdev_to_instance (struct pci_dev*) ;

__attribute__((used)) static struct sta2x11_mapping *sta2x11_pdev_to_mapping(struct pci_dev *pdev)
{
 struct sta2x11_instance *instance;
 int ep;

 instance = sta2x11_pdev_to_instance(pdev);
 if (!instance)
  return ((void*)0);
 ep = sta2x11_pdev_to_ep(pdev);
 return instance->map + ep;
}
