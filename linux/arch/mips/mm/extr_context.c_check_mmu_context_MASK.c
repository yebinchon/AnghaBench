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
struct mm_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_DEBUG_VM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,struct mm_struct*) ; 
 scalar_t__ cpu_has_mmid ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*) ; 
 unsigned int FUNC6 () ; 

void FUNC7(struct mm_struct *mm)
{
	unsigned int cpu = FUNC6();

	/*
	 * This function is specific to ASIDs, and should not be called when
	 * MMIDs are in use.
	 */
	if (FUNC1(FUNC0(CONFIG_DEBUG_VM) && cpu_has_mmid))
		return;

	/* Check if our ASID is of an older version and thus invalid */
	if (!FUNC3(cpu, FUNC4(cpu, mm), FUNC2(cpu)))
		FUNC5(mm);
}