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
 int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  octeon_irq_ciu0_en_mirror ; 
 int** octeon_irq_ciu_to_irq ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(void)
{
	const unsigned long core_id = FUNC2();
	u64 ciu_sum = FUNC3(FUNC0(core_id * 2));

	ciu_sum &= FUNC1(octeon_irq_ciu0_en_mirror);
	if (FUNC6(ciu_sum)) {
		int bit = FUNC5(ciu_sum) - 1;
		int irq = octeon_irq_ciu_to_irq[0][bit];
		if (FUNC6(irq))
			FUNC4(irq);
		else
			FUNC7();
	} else {
		FUNC7();
	}
}