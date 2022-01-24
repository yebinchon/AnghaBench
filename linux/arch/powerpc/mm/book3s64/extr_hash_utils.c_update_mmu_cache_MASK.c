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
struct vm_area_struct {int /*<<< orphan*/  vm_mm; } ;
typedef  int /*<<< orphan*/  pte_t ;
struct TYPE_3__ {scalar_t__ regs; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;

/* Variables and functions */
 unsigned long TASK_SIZE ; 
 unsigned long FUNC0 (scalar_t__) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 

void FUNC5(struct vm_area_struct *vma, unsigned long address,
		      pte_t *ptep)
{
	/*
	 * We don't need to worry about _PAGE_PRESENT here because we are
	 * called with either mm->page_table_lock held or ptl lock held
	 */
	unsigned long trap;
	bool is_exec;

	if (FUNC4()) {
		FUNC2((void *)address);
		return;
	}

	/* We only want HPTEs for linux PTEs that have _PAGE_ACCESSED set */
	if (!FUNC3(*ptep) || address >= TASK_SIZE)
		return;

	/*
	 * We try to figure out if we are coming from an instruction
	 * access fault and pass that down to __hash_page so we avoid
	 * double-faulting on execution of fresh text. We have to test
	 * for regs NULL since init will get here first thing at boot.
	 *
	 * We also avoid filling the hash if not coming from a fault.
	 */

	trap = current->thread.regs ? FUNC0(current->thread.regs) : 0UL;
	switch (trap) {
	case 0x300:
		is_exec = false;
		break;
	case 0x400:
		is_exec = true;
		break;
	default:
		return;
	}

	FUNC1(vma->vm_mm, address, is_exec, trap);
}