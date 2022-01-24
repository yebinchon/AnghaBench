#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {unsigned long vm_start; int /*<<< orphan*/  vm_end; scalar_t__ vm_file; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;
struct TYPE_2__ {struct mm_struct* active_mm; } ;

/* Variables and functions */
 int ARC_PATH_MAX ; 
 scalar_t__ FUNC0 (char*) ; 
 unsigned long TASK_UNMAPPED_BASE ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (scalar_t__,char*,int) ; 
 struct vm_area_struct* FUNC3 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(unsigned long address)
{
	struct vm_area_struct *vma;
	struct mm_struct *active_mm = current->active_mm;

	/* can't use print_vma_addr() yet as it doesn't check for
	 * non-inclusive vma
	 */
	FUNC1(&active_mm->mmap_sem);
	vma = FUNC3(active_mm, address);

	/* check against the find_vma( ) behaviour which returns the next VMA
	 * if the container VMA is not found
	 */
	if (vma && (vma->vm_start <= address)) {
		char buf[ARC_PATH_MAX];
		char *nm = "?";

		if (vma->vm_file) {
			nm = FUNC2(vma->vm_file, buf, ARC_PATH_MAX-1);
			if (FUNC0(nm))
				nm = "?";
		}
		FUNC4("    @off 0x%lx in [%s]\n"
			"    VMA: 0x%08lx to 0x%08lx\n",
			vma->vm_start < TASK_UNMAPPED_BASE ?
				address : address - vma->vm_start,
			nm, vma->vm_start, vma->vm_end);
	} else
		FUNC4("    @No matching VMA found\n");

	FUNC5(&active_mm->mmap_sem);
}