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
struct TYPE_3__ {int /*<<< orphan*/ * hash_context; } ;
struct mm_struct {TYPE_1__ context; int /*<<< orphan*/  pgd; } ;
struct TYPE_4__ {int /*<<< orphan*/  prtb0; } ;

/* Variables and functions */
 unsigned long RADIX_PGD_INDEX_SIZE ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  mmu_base_pid ; 
 int mmu_pid_bits ; 
 TYPE_2__* process_tb ; 
 unsigned long FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct mm_struct *mm)
{
	unsigned long rts_field;
	int index, max_id;

	max_id = (1 << mmu_pid_bits) - 1;
	index = FUNC1(mmu_base_pid, max_id);
	if (index < 0)
		return index;

	/*
	 * set the process table entry,
	 */
	rts_field = FUNC3();
	process_tb[index].prtb0 = FUNC2(rts_field | FUNC0(mm->pgd) | RADIX_PGD_INDEX_SIZE);

	/*
	 * Order the above store with subsequent update of the PID
	 * register (at which point HW can start loading/caching
	 * the entry) and the corresponding load by the MMU from
	 * the L2 cache.
	 */
	asm volatile("ptesync;isync" : : : "memory");

	mm->context.hash_context = NULL;

	return index;
}