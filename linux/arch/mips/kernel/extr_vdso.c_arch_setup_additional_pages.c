
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct TYPE_7__ {void* vdso; } ;
struct mm_struct {int mmap_sem; TYPE_3__ context; } ;
struct mips_vdso_image {unsigned long size; int mapping; } ;
struct linux_binprm {int dummy; } ;
struct TYPE_6__ {TYPE_1__* abi; } ;
struct TYPE_8__ {struct mm_struct* mm; TYPE_2__ thread; } ;
struct TYPE_5__ {struct mips_vdso_image* vdso; } ;


 int EINTR ;
 scalar_t__ IS_ERR (struct vm_area_struct*) ;
 scalar_t__ IS_ERR_VALUE (unsigned long) ;
 scalar_t__ MIPS_GIC_USER_OFS ;
 int PAGE_READONLY ;
 unsigned long PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 int PTR_ERR (struct vm_area_struct*) ;
 int STACK_TOP ;
 int VM_EXEC ;
 int VM_MAYEXEC ;
 int VM_MAYREAD ;
 int VM_MAYWRITE ;
 int VM_READ ;
 unsigned long __ALIGN_MASK (unsigned long,int) ;
 struct vm_area_struct* _install_special_mapping (struct mm_struct*,unsigned long,unsigned long,int,int *) ;
 scalar_t__ cpu_has_dc_aliases ;
 TYPE_4__* current ;
 scalar_t__ down_write_killable (int *) ;
 unsigned long get_unmapped_area (int *,int ,unsigned long,int ,int ) ;
 int io_remap_pfn_range (struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int ) ;
 scalar_t__ mips_gic_base ;
 scalar_t__ mips_gic_present () ;
 unsigned long mmap_region (int *,int ,unsigned long,int,int ,int *) ;
 int pgprot_noncached (int ) ;
 int remap_pfn_range (struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int ) ;
 int shm_align_mask ;
 int up_write (int *) ;
 int vdso_base () ;
 scalar_t__ vdso_data ;
 int vdso_vvar_mapping ;
 unsigned long virt_to_phys (scalar_t__) ;

int arch_setup_additional_pages(struct linux_binprm *bprm, int uses_interp)
{
 struct mips_vdso_image *image = current->thread.abi->vdso;
 struct mm_struct *mm = current->mm;
 unsigned long gic_size, vvar_size, size, base, data_addr, vdso_addr, gic_pfn;
 struct vm_area_struct *vma;
 int ret;

 if (down_write_killable(&mm->mmap_sem))
  return -EINTR;


 base = mmap_region(((void*)0), STACK_TOP, PAGE_SIZE,
      VM_READ | VM_EXEC |
      VM_MAYREAD | VM_MAYWRITE | VM_MAYEXEC,
      0, ((void*)0));
 if (IS_ERR_VALUE(base)) {
  ret = base;
  goto out;
 }
 gic_size = mips_gic_present() ? PAGE_SIZE : 0;
 vvar_size = gic_size + PAGE_SIZE;
 size = vvar_size + image->size;





 if (cpu_has_dc_aliases)
  size += shm_align_mask + 1;

 base = get_unmapped_area(((void*)0), vdso_base(), size, 0, 0);
 if (IS_ERR_VALUE(base)) {
  ret = base;
  goto out;
 }







 if (cpu_has_dc_aliases) {
  base = __ALIGN_MASK(base, shm_align_mask);
  base += ((unsigned long)vdso_data - gic_size) & shm_align_mask;
 }

 data_addr = base + gic_size;
 vdso_addr = data_addr + PAGE_SIZE;

 vma = _install_special_mapping(mm, base, vvar_size,
           VM_READ | VM_MAYREAD,
           &vdso_vvar_mapping);
 if (IS_ERR(vma)) {
  ret = PTR_ERR(vma);
  goto out;
 }


 if (gic_size) {
  gic_pfn = virt_to_phys(mips_gic_base + MIPS_GIC_USER_OFS) >> PAGE_SHIFT;

  ret = io_remap_pfn_range(vma, base, gic_pfn, gic_size,
      pgprot_noncached(PAGE_READONLY));
  if (ret)
   goto out;
 }


 ret = remap_pfn_range(vma, data_addr,
         virt_to_phys(vdso_data) >> PAGE_SHIFT,
         PAGE_SIZE, PAGE_READONLY);
 if (ret)
  goto out;


 vma = _install_special_mapping(mm, vdso_addr, image->size,
           VM_READ | VM_EXEC |
           VM_MAYREAD | VM_MAYWRITE | VM_MAYEXEC,
           &image->mapping);
 if (IS_ERR(vma)) {
  ret = PTR_ERR(vma);
  goto out;
 }

 mm->context.vdso = (void *)vdso_addr;
 ret = 0;

out:
 up_write(&mm->mmap_sem);
 return ret;
}
