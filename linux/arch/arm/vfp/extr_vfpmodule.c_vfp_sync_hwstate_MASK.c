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
typedef  int u32 ;
struct thread_info {int /*<<< orphan*/  vfpstate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FPEXC ; 
 int FPEXC_EN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (unsigned int,struct thread_info*) ; 

void FUNC6(struct thread_info *thread)
{
	unsigned int cpu = FUNC2();

	if (FUNC5(cpu, thread)) {
		u32 fpexc = FUNC0(FPEXC);

		/*
		 * Save the last VFP state on this CPU.
		 */
		FUNC1(FPEXC, fpexc | FPEXC_EN);
		FUNC4(&thread->vfpstate, fpexc | FPEXC_EN);
		FUNC1(FPEXC, fpexc);
	}

	FUNC3();
}