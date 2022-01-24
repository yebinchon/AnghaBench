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
struct vm_area_struct {int vm_flags; int /*<<< orphan*/  vm_mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  R4K_INDEX ; 
 int VM_EXEC ; 
 scalar_t__ cpu_has_dc_aliases ; 
 int /*<<< orphan*/  cpu_has_ic_fills_f_dc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static inline void FUNC3(void * args)
{
	struct vm_area_struct *vma = args;
	int exec = vma->vm_flags & VM_EXEC;

	if (!FUNC0(vma->vm_mm, R4K_INDEX))
		return;

	/*
	 * If dcache can alias, we must blast it since mapping is changing.
	 * If executable, we must ensure any dirty lines are written back far
	 * enough to be visible to icache.
	 */
	if (cpu_has_dc_aliases || (exec && !cpu_has_ic_fills_f_dc))
		FUNC1();
	/* If executable, blast stale lines from icache */
	if (exec)
		FUNC2();
}