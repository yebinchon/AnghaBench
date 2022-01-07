
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; unsigned long vm_pgoff; int vm_page_prot; } ;
struct pci_bus {int dummy; } ;
typedef int pgprot_t ;
typedef enum pci_mmap_state { ____Placeholder_pci_mmap_state } pci_mmap_state ;


 int EAGAIN ;
 int EINVAL ;
 int ENOSYS ;
 scalar_t__ IS_ERR (char*) ;
 unsigned long PAGE_SHIFT ;
 int PTR_ERR (char*) ;
 char* pci_get_legacy_mem (struct pci_bus*) ;
 int pci_mmap_mem ;
 int phys_mem_access_prot (int *,unsigned long,unsigned long,int ) ;
 scalar_t__ remap_pfn_range (struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int ) ;
 int valid_mmap_phys_addr_range (unsigned long,unsigned long) ;

int
pci_mmap_legacy_page_range(struct pci_bus *bus, struct vm_area_struct *vma,
      enum pci_mmap_state mmap_state)
{
 unsigned long size = vma->vm_end - vma->vm_start;
 pgprot_t prot;
 char *addr;


 if (mmap_state != pci_mmap_mem)
  return -ENOSYS;





 if (!valid_mmap_phys_addr_range(vma->vm_pgoff, size))
  return -EINVAL;
 prot = phys_mem_access_prot(((void*)0), vma->vm_pgoff, size,
        vma->vm_page_prot);

 addr = pci_get_legacy_mem(bus);
 if (IS_ERR(addr))
  return PTR_ERR(addr);

 vma->vm_pgoff += (unsigned long)addr >> PAGE_SHIFT;
 vma->vm_page_prot = prot;

 if (remap_pfn_range(vma, vma->vm_start, vma->vm_pgoff,
       size, vma->vm_page_prot))
  return -EAGAIN;

 return 0;
}
