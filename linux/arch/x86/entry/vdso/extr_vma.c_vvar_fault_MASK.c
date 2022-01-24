#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_fault_t ;
struct vm_special_mapping {int dummy; } ;
struct vm_fault {int pgoff; int /*<<< orphan*/  address; } ;
struct vm_area_struct {int /*<<< orphan*/  vm_page_prot; TYPE_2__* vm_mm; } ;
struct vdso_image {long sym_vvar_start; long sym_vvar_page; long sym_pvclock_page; long sym_hvclock_page; } ;
struct pvclock_vsyscall_time_info {int dummy; } ;
struct ms_hyperv_tsc_page {int dummy; } ;
struct TYPE_3__ {struct vdso_image* vdso_image; } ;
struct TYPE_4__ {TYPE_1__ context; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  VCLOCK_HVCLOCK ; 
 int /*<<< orphan*/  VCLOCK_PVCLOCK ; 
 int /*<<< orphan*/  VM_FAULT_SIGBUS ; 
 int FUNC0 (struct pvclock_vsyscall_time_info*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  __vvar_page ; 
 struct ms_hyperv_tsc_page* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct pvclock_vsyscall_time_info* FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ms_hyperv_tsc_page*) ; 
 int /*<<< orphan*/  FUNC7 (struct vm_area_struct*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct vm_area_struct*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static vm_fault_t FUNC9(const struct vm_special_mapping *sm,
		      struct vm_area_struct *vma, struct vm_fault *vmf)
{
	const struct vdso_image *image = vma->vm_mm->context.vdso_image;
	long sym_offset;

	if (!image)
		return VM_FAULT_SIGBUS;

	sym_offset = (long)(vmf->pgoff << PAGE_SHIFT) +
		image->sym_vvar_start;

	/*
	 * Sanity check: a symbol offset of zero means that the page
	 * does not exist for this vdso image, not that the page is at
	 * offset zero relative to the text mapping.  This should be
	 * impossible here, because sym_offset should only be zero for
	 * the page past the end of the vvar mapping.
	 */
	if (sym_offset == 0)
		return VM_FAULT_SIGBUS;

	if (sym_offset == image->sym_vvar_page) {
		return FUNC7(vma, vmf->address,
				FUNC1(&__vvar_page) >> PAGE_SHIFT);
	} else if (sym_offset == image->sym_pvclock_page) {
		struct pvclock_vsyscall_time_info *pvti =
			FUNC4();
		if (pvti && FUNC5(VCLOCK_PVCLOCK)) {
			return FUNC8(vma, vmf->address,
					FUNC0(pvti) >> PAGE_SHIFT,
					FUNC3(vma->vm_page_prot));
		}
	} else if (sym_offset == image->sym_hvclock_page) {
		struct ms_hyperv_tsc_page *tsc_pg = FUNC2();

		if (tsc_pg && FUNC5(VCLOCK_HVCLOCK))
			return FUNC7(vma, vmf->address,
					FUNC6(tsc_pg) >> PAGE_SHIFT);
	}

	return VM_FAULT_SIGBUS;
}