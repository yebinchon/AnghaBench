
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_page_prot; scalar_t__ vm_start; scalar_t__ vm_end; int vm_pgoff; } ;
struct pci_dev {int dummy; } ;
typedef enum pci_mmap_state { ____Placeholder_pci_mmap_state } pci_mmap_state ;


 int __pci_mmap_make_offset (struct pci_dev*,struct vm_area_struct*,int) ;
 int __pci_mmap_set_pgprot (struct pci_dev*,struct vm_area_struct*,int) ;
 int io_remap_pfn_range (struct vm_area_struct*,scalar_t__,int ,scalar_t__,int ) ;
 int pgprot_noncached (int ) ;

int pci_mmap_page_range(struct pci_dev *dev, int bar,
   struct vm_area_struct *vma,
   enum pci_mmap_state mmap_state, int write_combine)
{
 int ret;

 ret = __pci_mmap_make_offset(dev, vma, mmap_state);
 if (ret < 0)
  return ret;

 __pci_mmap_set_pgprot(dev, vma, mmap_state);

 vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);
 ret = io_remap_pfn_range(vma, vma->vm_start,
     vma->vm_pgoff,
     vma->vm_end - vma->vm_start,
     vma->vm_page_prot);
 if (ret)
  return ret;

 return 0;
}
