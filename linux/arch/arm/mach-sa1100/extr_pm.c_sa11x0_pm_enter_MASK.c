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
typedef  int /*<<< orphan*/  suspend_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  GAFR ; 
 unsigned long GPCR ; 
 int /*<<< orphan*/  GPDR ; 
 unsigned long GPLR ; 
 unsigned long GPSR ; 
 int ICCR ; 
 scalar_t__ ICLR ; 
 scalar_t__ ICMR ; 
 int /*<<< orphan*/  PPAR ; 
 int /*<<< orphan*/  PPDR ; 
 int /*<<< orphan*/  PPSR ; 
 int /*<<< orphan*/  PSDR ; 
 scalar_t__ PSPR ; 
 int /*<<< orphan*/  PSSR ; 
 int /*<<< orphan*/  PSSR_PH ; 
 int RCSR ; 
 int RCSR_HWR ; 
 int RCSR_SMR ; 
 int RCSR_SWR ; 
 int RCSR_WDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int SLEEP_SAVE_COUNT ; 
 int /*<<< orphan*/  Ser1SDCR0 ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_resume ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sa1100_finish_suspend ; 

__attribute__((used)) static int FUNC4(suspend_state_t state)
{
	unsigned long gpio, sleep_save[SLEEP_SAVE_COUNT];

	gpio = GPLR;

	/* save vital registers */
	FUNC1(GPDR);
	FUNC1(GAFR);

	FUNC1(PPDR);
	FUNC1(PPSR);
	FUNC1(PPAR);
	FUNC1(PSDR);

	FUNC1(Ser1SDCR0);

	/* Clear previous reset status */
	RCSR = RCSR_HWR | RCSR_SWR | RCSR_WDR | RCSR_SMR;

	/* set resume return address */
	PSPR = FUNC2(cpu_resume);

	/* go zzz */
	FUNC3(0, sa1100_finish_suspend);

	/*
	 * Ensure not to come back here if it wasn't intended
	 */
	RCSR = RCSR_SMR;
	PSPR = 0;

	/*
	 * Ensure interrupt sources are disabled; we will re-init
	 * the interrupt subsystem via the device manager.
	 */
	ICLR = 0;
	ICCR = 1;
	ICMR = 0;

	/* restore registers */
	FUNC0(GPDR);
	FUNC0(GAFR);

	FUNC0(PPDR);
	FUNC0(PPSR);
	FUNC0(PPAR);
	FUNC0(PSDR);

	FUNC0(Ser1SDCR0);

	GPSR = gpio;
	GPCR = ~gpio;

	/*
	 * Clear the peripheral sleep-hold bit.
	 */
	PSSR = PSSR_PH;

	return 0;
}