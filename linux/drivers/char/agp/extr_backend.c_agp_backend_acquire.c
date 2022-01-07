
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct agp_bridge_data {int agp_in_use; } ;


 struct agp_bridge_data* agp_find_bridge (struct pci_dev*) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;

struct agp_bridge_data *agp_backend_acquire(struct pci_dev *pdev)
{
 struct agp_bridge_data *bridge;

 bridge = agp_find_bridge(pdev);

 if (!bridge)
  return ((void*)0);

 if (atomic_read(&bridge->agp_in_use))
  return ((void*)0);
 atomic_inc(&bridge->agp_in_use);
 return bridge;
}
