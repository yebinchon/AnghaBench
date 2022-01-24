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
struct task_struct {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  pgd; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_SATP ; 
 int SATP_MODE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*) ; 
 unsigned int FUNC6 () ; 
 scalar_t__ FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(struct mm_struct *prev, struct mm_struct *next,
	struct task_struct *task)
{
	unsigned int cpu;

	if (FUNC7(prev == next))
		return;

	/*
	 * Mark the current MM context as inactive, and the next as
	 * active.  This is at least used by the icache flushing
	 * routines in order to determine who should be flushed.
	 */
	cpu = FUNC6();

	FUNC0(cpu, FUNC5(prev));
	FUNC1(cpu, FUNC5(next));

	FUNC2(CSR_SATP, FUNC8(next->pgd) | SATP_MODE);
	FUNC4();

	FUNC3(next);
}