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
 int FUNC0 (unsigned long const) ; 
 int CVMX_CIU2_INTR_CIU_READY ; 
 int FUNC1 (unsigned long const) ; 
 int FUNC2 (unsigned long const) ; 
 int /*<<< orphan*/  OCTEON_CN68XX ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 () ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int** octeon_irq_ciu_to_irq ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(void)
{
	int line;
	int bit;
	int irq;
	u64 src_reg, src, sum;
	const unsigned long core_id = FUNC4();

	sum = FUNC5(FUNC2(core_id)) & 0xfful;

	if (FUNC9(!sum))
		goto spurious;

	line = FUNC7(sum) - 1;
	src_reg = FUNC1(core_id) + (0x1000 * line);
	src = FUNC5(src_reg);

	if (FUNC9(!src))
		goto spurious;

	bit = FUNC7(src) - 1;
	irq = octeon_irq_ciu_to_irq[line][bit];
	if (FUNC9(!irq))
		goto spurious;

	FUNC6(irq);
	goto out;

spurious:
	FUNC8();
out:
	/* CN68XX pass 1.x has an errata that accessing the ACK registers
		can stop interrupts from propagating */
	if (FUNC3(OCTEON_CN68XX))
		FUNC5(CVMX_CIU2_INTR_CIU_READY);
	else
		FUNC5(FUNC0(core_id));
	return;
}