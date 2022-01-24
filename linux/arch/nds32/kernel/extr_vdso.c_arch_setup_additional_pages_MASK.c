#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {int /*<<< orphan*/  vm_page_prot; } ;
struct TYPE_4__ {int /*<<< orphan*/ * vdso; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; TYPE_1__ context; } ;
struct linux_binprm {int dummy; } ;
typedef  int /*<<< orphan*/  pgprot_t ;
struct TYPE_6__ {int aliasing_num; unsigned int aliasing_mask; } ;
struct TYPE_5__ {struct mm_struct* mm; } ;

/* Variables and functions */
 size_t DCACHE ; 
 int EINTR ; 
 unsigned long EMPTY_VALUE ; 
 scalar_t__ FUNC0 (struct vm_area_struct*) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 TYPE_3__* L1_cache_info ; 
 unsigned long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int FUNC2 (struct vm_area_struct*) ; 
 int VM_EXEC ; 
 int VM_MAYEXEC ; 
 int VM_MAYREAD ; 
 int VM_MAYWRITE ; 
 int VM_READ ; 
 int _PAGE_C_DEV ; 
 int _PAGE_D ; 
 int _PAGE_M_UR_KR ; 
 int _PAGE_V ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct vm_area_struct* FUNC4 (struct mm_struct*,unsigned long,unsigned long,int,int /*<<< orphan*/ *) ; 
 TYPE_2__* current ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ *,unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct vm_area_struct*,unsigned long,unsigned long,int,int /*<<< orphan*/ ) ; 
 unsigned long timer_mapping_base ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ vdso_data ; 
 unsigned long vdso_pages ; 
 unsigned long FUNC9 (unsigned long) ; 
 int /*<<< orphan*/ * vdso_spec ; 
 unsigned long FUNC10 (scalar_t__) ; 

int FUNC11(struct linux_binprm *bprm, int uses_interp)
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
	/* Be sure to map the data page */
	vdso_mapping_len = vdso_text_len + vvar_page_num * PAGE_SIZE;
#ifdef CONFIG_CPU_CACHE_ALIASING
	vdso_mapping_len += L1_cache_info[DCACHE].aliasing_num - 1;
#endif

	if (FUNC5(&mm->mmap_sem))
		return -EINTR;

	addr = FUNC9(vdso_mapping_len);
	vdso_base = FUNC6(NULL, addr, vdso_mapping_len, 0, 0);
	if (FUNC1(vdso_base)) {
		ret = vdso_base;
		goto up_fail;
	}

#ifdef CONFIG_CPU_CACHE_ALIASING
	{
		unsigned int aliasing_mask =
		    L1_cache_info[DCACHE].aliasing_mask;
		unsigned int page_colour_ofs;
		page_colour_ofs = ((unsigned int)vdso_data & aliasing_mask) -
		    (vdso_base & aliasing_mask);
		vdso_base += page_colour_ofs & aliasing_mask;
	}
#endif

	vma = FUNC4(mm, vdso_base, vvar_page_num * PAGE_SIZE,
				       VM_READ | VM_MAYREAD, &vdso_spec[0]);
	if (FUNC0(vma)) {
		ret = FUNC2(vma);
		goto up_fail;
	}

	/*Map vdata to user space */
	ret = FUNC7(vma, vdso_base,
				 FUNC10(vdso_data) >> PAGE_SHIFT,
				 PAGE_SIZE, vma->vm_page_prot);
	if (ret)
		goto up_fail;

	/*Map timer to user space */
	vdso_base += PAGE_SIZE;
	prot = FUNC3(_PAGE_V | _PAGE_M_UR_KR | _PAGE_D |  _PAGE_C_DEV);
	ret = FUNC7(vma, vdso_base, timer_mapping_base >> PAGE_SHIFT,
				 PAGE_SIZE, prot);
	if (ret)
		goto up_fail;

	/*Map vdso to user space */
	vdso_base += PAGE_SIZE;
	mm->context.vdso = (void *)vdso_base;
	vma = FUNC4(mm, vdso_base, vdso_text_len,
				       VM_READ | VM_EXEC |
				       VM_MAYREAD | VM_MAYWRITE | VM_MAYEXEC,
				       &vdso_spec[1]);
	if (FUNC0(vma)) {
		ret = FUNC2(vma);
		goto up_fail;
	}

	FUNC8(&mm->mmap_sem);
	return 0;

up_fail:
	mm->context.vdso = NULL;
	FUNC8(&mm->mmap_sem);
	return ret;
}