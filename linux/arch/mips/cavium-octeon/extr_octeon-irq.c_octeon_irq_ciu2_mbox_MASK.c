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
typedef  int u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long const) ; 
 int /*<<< orphan*/  CVMX_CIU2_INTR_CIU_READY ; 
 int /*<<< orphan*/  FUNC1 (unsigned long const) ; 
 int /*<<< orphan*/  OCTEON_CN68XX ; 
 scalar_t__ OCTEON_IRQ_MBOX0 ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(void)
{
	int line;

	const unsigned long core_id = FUNC3();
	u64 sum = FUNC4(FUNC1(core_id)) >> 60;

	if (FUNC8(!sum))
		goto spurious;

	line = FUNC6(sum) - 1;

	FUNC5(OCTEON_IRQ_MBOX0 + line);
	goto out;

spurious:
	FUNC7();
out:
	/* CN68XX pass 1.x has an errata that accessing the ACK registers
		can stop interrupts from propagating */
	if (FUNC2(OCTEON_CN68XX))
		FUNC4(CVMX_CIU2_INTR_CIU_READY);
	else
		FUNC4(FUNC0(core_id));
	return;
}