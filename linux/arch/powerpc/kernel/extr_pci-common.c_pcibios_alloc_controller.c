
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_controller {int is_dynamic; struct device_node* dn; int list_node; int global_number; } ;
struct device_node {int dummy; } ;


 int GFP_KERNEL ;
 int NUMA_NO_NODE ;
 int PHB_SET_NODE (struct pci_controller*,int) ;
 int get_phb_number (struct device_node*) ;
 int hose_list ;
 int hose_spinlock ;
 int list_add_tail (int *,int *) ;
 int node_online (int) ;
 int of_node_to_nid (struct device_node*) ;
 int slab_is_available () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct pci_controller* zalloc_maybe_bootmem (int,int ) ;

struct pci_controller *pcibios_alloc_controller(struct device_node *dev)
{
 struct pci_controller *phb;

 phb = zalloc_maybe_bootmem(sizeof(struct pci_controller), GFP_KERNEL);
 if (phb == ((void*)0))
  return ((void*)0);
 spin_lock(&hose_spinlock);
 phb->global_number = get_phb_number(dev);
 list_add_tail(&phb->list_node, &hose_list);
 spin_unlock(&hose_spinlock);
 phb->dn = dev;
 phb->is_dynamic = slab_is_available();
 return phb;
}
