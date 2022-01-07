
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_pgoff; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int comm; } ;


 int PAGE_SHIFT ;
 int WARN (int,char*,int ,char*,unsigned long,unsigned long,int ,int,unsigned long) ;
 TYPE_1__* current ;
 int pci_name (struct pci_dev*) ;
 int pci_resource_len (struct pci_dev*,int) ;
 unsigned long vma_pages (struct vm_area_struct*) ;

__attribute__((used)) static int __pci_mmap_fits(struct pci_dev *pdev, int num,
      struct vm_area_struct *vma, int sparse)
{
 unsigned long nr, start, size;
 int shift = sparse ? 5 : 0;

 nr = vma_pages(vma);
 start = vma->vm_pgoff;
 size = ((pci_resource_len(pdev, num) - 1) >> (PAGE_SHIFT - shift)) + 1;

 if (start < size && size - start >= nr)
  return 1;
 WARN(1, "process \"%s\" tried to map%s 0x%08lx-0x%08lx on %s BAR %d "
  "(size 0x%08lx)\n",
  current->comm, sparse ? " sparse" : "", start, start + nr,
  pci_name(pdev), num, size);
 return 0;
}
