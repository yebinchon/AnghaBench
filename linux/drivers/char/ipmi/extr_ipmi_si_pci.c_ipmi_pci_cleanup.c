
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_sm_io {struct pci_dev* addr_source_data; } ;
struct pci_dev {int dummy; } ;


 int pci_disable_device (struct pci_dev*) ;

__attribute__((used)) static void ipmi_pci_cleanup(struct si_sm_io *io)
{
 struct pci_dev *pdev = io->addr_source_data;

 pci_disable_device(pdev);
}
