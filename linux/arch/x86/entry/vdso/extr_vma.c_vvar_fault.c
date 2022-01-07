
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_special_mapping {int dummy; } ;
struct vm_fault {int pgoff; int address; } ;
struct vm_area_struct {int vm_page_prot; TYPE_2__* vm_mm; } ;
struct vdso_image {long sym_vvar_start; long sym_vvar_page; long sym_pvclock_page; long sym_hvclock_page; } ;
struct pvclock_vsyscall_time_info {int dummy; } ;
struct ms_hyperv_tsc_page {int dummy; } ;
struct TYPE_3__ {struct vdso_image* vdso_image; } ;
struct TYPE_4__ {TYPE_1__ context; } ;


 int PAGE_SHIFT ;
 int VCLOCK_HVCLOCK ;
 int VCLOCK_PVCLOCK ;
 int VM_FAULT_SIGBUS ;
 int __pa (struct pvclock_vsyscall_time_info*) ;
 int __pa_symbol (int *) ;
 int __vvar_page ;
 struct ms_hyperv_tsc_page* hv_get_tsc_page () ;
 int pgprot_decrypted (int ) ;
 struct pvclock_vsyscall_time_info* pvclock_get_pvti_cpu0_va () ;
 scalar_t__ vclock_was_used (int ) ;
 int virt_to_phys (struct ms_hyperv_tsc_page*) ;
 int vmf_insert_pfn (struct vm_area_struct*,int ,int) ;
 int vmf_insert_pfn_prot (struct vm_area_struct*,int ,int,int ) ;

__attribute__((used)) static vm_fault_t vvar_fault(const struct vm_special_mapping *sm,
        struct vm_area_struct *vma, struct vm_fault *vmf)
{
 const struct vdso_image *image = vma->vm_mm->context.vdso_image;
 long sym_offset;

 if (!image)
  return VM_FAULT_SIGBUS;

 sym_offset = (long)(vmf->pgoff << PAGE_SHIFT) +
  image->sym_vvar_start;
 if (sym_offset == 0)
  return VM_FAULT_SIGBUS;

 if (sym_offset == image->sym_vvar_page) {
  return vmf_insert_pfn(vma, vmf->address,
    __pa_symbol(&__vvar_page) >> PAGE_SHIFT);
 } else if (sym_offset == image->sym_pvclock_page) {
  struct pvclock_vsyscall_time_info *pvti =
   pvclock_get_pvti_cpu0_va();
  if (pvti && vclock_was_used(VCLOCK_PVCLOCK)) {
   return vmf_insert_pfn_prot(vma, vmf->address,
     __pa(pvti) >> PAGE_SHIFT,
     pgprot_decrypted(vma->vm_page_prot));
  }
 } else if (sym_offset == image->sym_hvclock_page) {
  struct ms_hyperv_tsc_page *tsc_pg = hv_get_tsc_page();

  if (tsc_pg && vclock_was_used(VCLOCK_HVCLOCK))
   return vmf_insert_pfn(vma, vmf->address,
     virt_to_phys(tsc_pg) >> PAGE_SHIFT);
 }

 return VM_FAULT_SIGBUS;
}
