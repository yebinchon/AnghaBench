
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_pgoff; } ;
struct pci_dev {int bus; } ;
struct pci_controller {int io_base_phys; scalar_t__ io_base_virt; } ;
typedef int resource_size_t ;


 int EINVAL ;
 int PAGE_SHIFT ;
 unsigned long _IO_BASE ;
 struct pci_controller* pci_bus_to_host (int ) ;
 int pci_resource_start (struct pci_dev*,int) ;

int pci_iobar_pfn(struct pci_dev *pdev, int bar, struct vm_area_struct *vma)
{
 struct pci_controller *hose = pci_bus_to_host(pdev->bus);
 resource_size_t ioaddr = pci_resource_start(pdev, bar);

 if (!hose)
  return -EINVAL;


 ioaddr -= (unsigned long)hose->io_base_virt - _IO_BASE;

 vma->vm_pgoff += (ioaddr + hose->io_base_phys) >> PAGE_SHIFT;
 return 0;
}
