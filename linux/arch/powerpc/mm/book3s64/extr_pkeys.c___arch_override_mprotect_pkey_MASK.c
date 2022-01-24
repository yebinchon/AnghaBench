#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vm_area_struct {int /*<<< orphan*/  vm_mm; } ;

/* Variables and functions */
 int PROT_EXEC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct vm_area_struct*) ; 
 int FUNC2 (struct vm_area_struct*) ; 

int FUNC3(struct vm_area_struct *vma, int prot,
				  int pkey)
{
	/*
	 * If the currently associated pkey is execute-only, but the requested
	 * protection is not execute-only, move it back to the default pkey.
	 */
	if (FUNC1(vma) && (prot != PROT_EXEC))
		return 0;

	/*
	 * The requested protection is execute-only. Hence let's use an
	 * execute-only pkey.
	 */
	if (prot == PROT_EXEC) {
		pkey = FUNC0(vma->vm_mm);
		if (pkey > 0)
			return pkey;
	}

	/* Nothing to override. */
	return FUNC2(vma);
}