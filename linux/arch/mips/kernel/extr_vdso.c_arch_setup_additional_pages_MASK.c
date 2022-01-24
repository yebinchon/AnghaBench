#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {int dummy; } ;
struct TYPE_7__ {void* vdso; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; TYPE_3__ context; } ;
struct mips_vdso_image {unsigned long size; int /*<<< orphan*/  mapping; } ;
struct linux_binprm {int dummy; } ;
struct TYPE_6__ {TYPE_1__* abi; } ;
struct TYPE_8__ {struct mm_struct* mm; TYPE_2__ thread; } ;
struct TYPE_5__ {struct mips_vdso_image* vdso; } ;

/* Variables and functions */
 int EINTR ; 
 scalar_t__ FUNC0 (struct vm_area_struct*) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 scalar_t__ MIPS_GIC_USER_OFS ; 
 int /*<<< orphan*/  PAGE_READONLY ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 int FUNC2 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  STACK_TOP ; 
 int VM_EXEC ; 
 int VM_MAYEXEC ; 
 int VM_MAYREAD ; 
 int VM_MAYWRITE ; 
 int VM_READ ; 
 unsigned long FUNC3 (unsigned long,int) ; 
 struct vm_area_struct* FUNC4 (struct mm_struct*,unsigned long,unsigned long,int,int /*<<< orphan*/ *) ; 
 scalar_t__ cpu_has_dc_aliases ; 
 TYPE_4__* current ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ mips_gic_base ; 
 scalar_t__ FUNC8 () ; 
 unsigned long FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int shm_align_mask ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ vdso_data ; 
 int /*<<< orphan*/  vdso_vvar_mapping ; 
 unsigned long FUNC14 (scalar_t__) ; 

int FUNC15(struct linux_binprm *bprm, int uses_interp)
{
	struct mips_vdso_image *image = current->thread.abi->vdso;
	struct mm_struct *mm = current->mm;
	unsigned long gic_size, vvar_size, size, base, data_addr, vdso_addr, gic_pfn;
	struct vm_area_struct *vma;
	int ret;

	if (FUNC5(&mm->mmap_sem))
		return -EINTR;

	/* Map delay slot emulation page */
	base = FUNC9(NULL, STACK_TOP, PAGE_SIZE,
			   VM_READ | VM_EXEC |
			   VM_MAYREAD | VM_MAYWRITE | VM_MAYEXEC,
			   0, NULL);
	if (FUNC1(base)) {
		ret = base;
		goto out;
	}

	/*
	 * Determine total area size. This includes the VDSO data itself, the
	 * data page, and the GIC user page if present. Always create a mapping
	 * for the GIC user area if the GIC is present regardless of whether it
	 * is the current clocksource, in case it comes into use later on. We
	 * only map a page even though the total area is 64K, as we only need
	 * the counter registers at the start.
	 */
	gic_size = FUNC8() ? PAGE_SIZE : 0;
	vvar_size = gic_size + PAGE_SIZE;
	size = vvar_size + image->size;

	/*
	 * Find a region that's large enough for us to perform the
	 * colour-matching alignment below.
	 */
	if (cpu_has_dc_aliases)
		size += shm_align_mask + 1;

	base = FUNC6(NULL, FUNC13(), size, 0, 0);
	if (FUNC1(base)) {
		ret = base;
		goto out;
	}

	/*
	 * If we suffer from dcache aliasing, ensure that the VDSO data page
	 * mapping is coloured the same as the kernel's mapping of that memory.
	 * This ensures that when the kernel updates the VDSO data userland
	 * will observe it without requiring cache invalidations.
	 */
	if (cpu_has_dc_aliases) {
		base = FUNC3(base, shm_align_mask);
		base += ((unsigned long)vdso_data - gic_size) & shm_align_mask;
	}

	data_addr = base + gic_size;
	vdso_addr = data_addr + PAGE_SIZE;

	vma = FUNC4(mm, base, vvar_size,
				       VM_READ | VM_MAYREAD,
				       &vdso_vvar_mapping);
	if (FUNC0(vma)) {
		ret = FUNC2(vma);
		goto out;
	}

	/* Map GIC user page. */
	if (gic_size) {
		gic_pfn = FUNC14(mips_gic_base + MIPS_GIC_USER_OFS) >> PAGE_SHIFT;

		ret = FUNC7(vma, base, gic_pfn, gic_size,
					 FUNC10(PAGE_READONLY));
		if (ret)
			goto out;
	}

	/* Map data page. */
	ret = FUNC11(vma, data_addr,
			      FUNC14(vdso_data) >> PAGE_SHIFT,
			      PAGE_SIZE, PAGE_READONLY);
	if (ret)
		goto out;

	/* Map VDSO image. */
	vma = FUNC4(mm, vdso_addr, image->size,
				       VM_READ | VM_EXEC |
				       VM_MAYREAD | VM_MAYWRITE | VM_MAYEXEC,
				       &image->mapping);
	if (FUNC0(vma)) {
		ret = FUNC2(vma);
		goto out;
	}

	mm->context.vdso = (void *)vdso_addr;
	ret = 0;

out:
	FUNC12(&mm->mmap_sem);
	return ret;
}