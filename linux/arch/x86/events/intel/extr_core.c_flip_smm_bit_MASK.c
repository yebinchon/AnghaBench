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

/* Variables and functions */
 int /*<<< orphan*/  DEBUGCTLMSR_FREEZE_IN_SMM_BIT ; 
 int /*<<< orphan*/  MSR_IA32_DEBUGCTLMSR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void *data)
{
	unsigned long set = *(unsigned long *)data;

	if (set > 0) {
		FUNC1(MSR_IA32_DEBUGCTLMSR,
			    DEBUGCTLMSR_FREEZE_IN_SMM_BIT);
	} else {
		FUNC0(MSR_IA32_DEBUGCTLMSR,
			      DEBUGCTLMSR_FREEZE_IN_SMM_BIT);
	}
}