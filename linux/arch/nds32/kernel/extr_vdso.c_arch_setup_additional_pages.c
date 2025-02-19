
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vm_area_struct {int vm_page_prot; } ;
struct TYPE_4__ {int * vdso; } ;
struct mm_struct {int mmap_sem; TYPE_1__ context; } ;
struct linux_binprm {int dummy; } ;
typedef int pgprot_t ;
struct TYPE_6__ {int aliasing_num; unsigned int aliasing_mask; } ;
struct TYPE_5__ {struct mm_struct* mm; } ;


 size_t DCACHE ;
 int EINTR ;
 unsigned long EMPTY_VALUE ;
 scalar_t__ IS_ERR (struct vm_area_struct*) ;
 scalar_t__ IS_ERR_VALUE (unsigned long) ;
 TYPE_3__* L1_cache_info ;
 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PTR_ERR (struct vm_area_struct*) ;
 int VM_EXEC ;
 int VM_MAYEXEC ;
 int VM_MAYREAD ;
 int VM_MAYWRITE ;
 int VM_READ ;
 int _PAGE_C_DEV ;
 int _PAGE_D ;
 int _PAGE_M_UR_KR ;
 int _PAGE_V ;
 int __pgprot (int) ;
 struct vm_area_struct* _install_special_mapping (struct mm_struct*,unsigned long,unsigned long,int,int *) ;
 TYPE_2__* current ;
 scalar_t__ down_write_killable (int *) ;
 unsigned long get_unmapped_area (int *,unsigned long,unsigned long,int ,int ) ;
 int io_remap_pfn_range (struct vm_area_struct*,unsigned long,unsigned long,int,int ) ;
 unsigned long timer_mapping_base ;
 int up_write (int *) ;
 scalar_t__ vdso_data ;
 unsigned long vdso_pages ;
 unsigned long vdso_random_addr (unsigned long) ;
 int * vdso_spec ;
 unsigned long virt_to_phys (scalar_t__) ;

int arch_setup_additional_pages(struct linux_binprm *bprm, int uses_interp)
{
 struct mm_struct *mm = current->mm;
 unsigned long vdso_base, vdso_text_len, vdso_mapping_len;
 struct vm_area_struct *vma;
 unsigned long addr = 0;
 pgprot_t prot;
 int ret, vvar_page_num = 2;

 vdso_text_len = vdso_pages << PAGE_SHIFT;

 if(timer_mapping_base == EMPTY_VALUE)
  vvar_page_num = 1;

 vdso_mapping_len = vdso_text_len + vvar_page_num * PAGE_SIZE;




 if (down_write_killable(&mm->mmap_sem))
  return -EINTR;

 addr = vdso_random_addr(vdso_mapping_len);
 vdso_base = get_unmapped_area(((void*)0), addr, vdso_mapping_len, 0, 0);
 if (IS_ERR_VALUE(vdso_base)) {
  ret = vdso_base;
  goto up_fail;
 }
 vma = _install_special_mapping(mm, vdso_base, vvar_page_num * PAGE_SIZE,
           VM_READ | VM_MAYREAD, &vdso_spec[0]);
 if (IS_ERR(vma)) {
  ret = PTR_ERR(vma);
  goto up_fail;
 }


 ret = io_remap_pfn_range(vma, vdso_base,
     virt_to_phys(vdso_data) >> PAGE_SHIFT,
     PAGE_SIZE, vma->vm_page_prot);
 if (ret)
  goto up_fail;


 vdso_base += PAGE_SIZE;
 prot = __pgprot(_PAGE_V | _PAGE_M_UR_KR | _PAGE_D | _PAGE_C_DEV);
 ret = io_remap_pfn_range(vma, vdso_base, timer_mapping_base >> PAGE_SHIFT,
     PAGE_SIZE, prot);
 if (ret)
  goto up_fail;


 vdso_base += PAGE_SIZE;
 mm->context.vdso = (void *)vdso_base;
 vma = _install_special_mapping(mm, vdso_base, vdso_text_len,
           VM_READ | VM_EXEC |
           VM_MAYREAD | VM_MAYWRITE | VM_MAYEXEC,
           &vdso_spec[1]);
 if (IS_ERR(vma)) {
  ret = PTR_ERR(vma);
  goto up_fail;
 }

 up_write(&mm->mmap_sem);
 return 0;

up_fail:
 mm->context.vdso = ((void*)0);
 up_write(&mm->mmap_sem);
 return ret;
}
