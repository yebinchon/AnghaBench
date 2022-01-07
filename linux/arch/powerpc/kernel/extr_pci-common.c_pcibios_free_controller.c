
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_controller {scalar_t__ global_number; scalar_t__ is_dynamic; int list_node; } ;


 scalar_t__ MAX_PHBS ;
 int clear_bit (scalar_t__,int ) ;
 int hose_spinlock ;
 int kfree (struct pci_controller*) ;
 int list_del (int *) ;
 int phb_bitmap ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void pcibios_free_controller(struct pci_controller *phb)
{
 spin_lock(&hose_spinlock);


 if (phb->global_number < MAX_PHBS)
  clear_bit(phb->global_number, phb_bitmap);

 list_del(&phb->list_node);
 spin_unlock(&hose_spinlock);

 if (phb->is_dynamic)
  kfree(phb);
}
