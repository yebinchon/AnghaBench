
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_controller {int dummy; } ;


 int eeh_phb_pe_create (struct pci_controller*) ;

void eeh_dev_phb_init_dynamic(struct pci_controller *phb)
{

 eeh_phb_pe_create(phb);
}
