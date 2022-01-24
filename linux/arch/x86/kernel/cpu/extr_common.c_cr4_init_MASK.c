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
struct TYPE_2__ {int /*<<< orphan*/  cr4; } ;

/* Variables and functions */
 unsigned long X86_CR4_PCIDE ; 
 int /*<<< orphan*/  X86_FEATURE_PCID ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__ cpu_tlbstate ; 
 unsigned long cr4_pinned_bits ; 
 int /*<<< orphan*/  cr_pinning ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 

void FUNC5(void)
{
	unsigned long cr4 = FUNC0();

	if (FUNC2(X86_FEATURE_PCID))
		cr4 |= X86_CR4_PCIDE;
	if (FUNC3(&cr_pinning))
		cr4 |= cr4_pinned_bits;

	FUNC1(cr4);

	/* Initialize cr4 shadow for this CPU. */
	FUNC4(cpu_tlbstate.cr4, cr4);
}