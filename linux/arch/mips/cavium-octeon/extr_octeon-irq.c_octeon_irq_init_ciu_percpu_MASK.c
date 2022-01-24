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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  octeon_irq_ciu0_en_mirror ; 
 int /*<<< orphan*/  octeon_irq_ciu1_en_mirror ; 
 int /*<<< orphan*/  octeon_irq_ciu_spinlock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static void FUNC10(void)
{
	int coreid = FUNC4();


	FUNC3(octeon_irq_ciu0_en_mirror, 0);
	FUNC3(octeon_irq_ciu1_en_mirror, 0);
	FUNC9();
	FUNC7(FUNC8(&octeon_irq_ciu_spinlock));
	/*
	 * Disable All CIU Interrupts. The ones we need will be
	 * enabled later.  Read the SUM register so we know the write
	 * completed.
	 */
	FUNC6(FUNC0((coreid * 2)), 0);
	FUNC6(FUNC0((coreid * 2 + 1)), 0);
	FUNC6(FUNC1((coreid * 2)), 0);
	FUNC6(FUNC1((coreid * 2 + 1)), 0);
	FUNC5(FUNC2((coreid * 2)));
}