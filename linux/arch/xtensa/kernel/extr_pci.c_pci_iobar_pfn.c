
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_pgoff; } ;
struct pci_dev {scalar_t__ sysdata; } ;
struct TYPE_2__ {unsigned long start; scalar_t__ base; } ;
struct pci_controller {TYPE_1__ io_space; } ;
typedef unsigned long resource_size_t ;


 int EINVAL ;
 unsigned long PAGE_SHIFT ;
 unsigned long pci_resource_start (struct pci_dev*,int) ;

int pci_iobar_pfn(struct pci_dev *pdev, int bar, struct vm_area_struct *vma)
{
 struct pci_controller *pci_ctrl = (struct pci_controller*) pdev->sysdata;
 resource_size_t ioaddr = pci_resource_start(pdev, bar);

 if (pci_ctrl == 0)
  return -EINVAL;


 ioaddr -= (unsigned long)pci_ctrl->io_space.base;

 vma->vm_pgoff += (ioaddr + pci_ctrl->io_space.start) >> PAGE_SHIFT;
 return 0;
}
