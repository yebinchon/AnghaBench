
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {scalar_t__ vm_pgoff; int vm_flags; TYPE_1__* vm_file; int vm_page_prot; int * vm_ops; } ;
struct kvmppc_xive {int mapping; } ;
struct kvm_device {struct kvmppc_xive* private; } ;
struct TYPE_2__ {int f_mapping; } ;


 int EINVAL ;
 int KVMPPC_XIVE_NR_IRQS ;
 scalar_t__ KVM_XIVE_ESB_PAGE_OFFSET ;
 scalar_t__ KVM_XIVE_TIMA_PAGE_OFFSET ;
 int VM_IO ;
 int VM_PFNMAP ;
 int pgprot_noncached_wc (int ) ;
 int vma_pages (struct vm_area_struct*) ;
 int xive_native_esb_vmops ;
 int xive_native_tima_vmops ;

__attribute__((used)) static int kvmppc_xive_native_mmap(struct kvm_device *dev,
       struct vm_area_struct *vma)
{
 struct kvmppc_xive *xive = dev->private;


 if (vma->vm_pgoff == KVM_XIVE_TIMA_PAGE_OFFSET) {
  if (vma_pages(vma) > 4)
   return -EINVAL;
  vma->vm_ops = &xive_native_tima_vmops;
 } else if (vma->vm_pgoff == KVM_XIVE_ESB_PAGE_OFFSET) {
  if (vma_pages(vma) > KVMPPC_XIVE_NR_IRQS * 2)
   return -EINVAL;
  vma->vm_ops = &xive_native_esb_vmops;
 } else {
  return -EINVAL;
 }

 vma->vm_flags |= VM_IO | VM_PFNMAP;
 vma->vm_page_prot = pgprot_noncached_wc(vma->vm_page_prot);






 xive->mapping = vma->vm_file->f_mapping;
 return 0;
}
