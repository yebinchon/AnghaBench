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
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int ENOSYS ; 
 int HZ ; 
 scalar_t__ SIRFSOC_CPU1_JUMPADDR_OFFSET ; 
 scalar_t__ SIRFSOC_CPU1_WAKEMAGIC_OFFSET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  boot_lock ; 
 scalar_t__ clk_base ; 
 int /*<<< orphan*/  clk_ids ; 
 int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct device_node* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct device_node*,int /*<<< orphan*/ ) ; 
 int prima2_pen_release ; 
 int /*<<< orphan*/  sirfsoc_secondary_startup ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int*) ; 
 scalar_t__ FUNC11 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(unsigned int cpu, struct task_struct *idle)
{
	unsigned long timeout;
	struct device_node *np;

	np = FUNC5(NULL, clk_ids);
	if (!np)
		return -ENODEV;

	clk_base = FUNC6(np, 0);
	if (!clk_base)
		return -ENOMEM;

	/*
	 * write the address of secondary startup into the clkc register
	 * at offset 0x2bC, then write the magic number 0x3CAF5D62 to the
	 * clkc register at offset 0x2b8, which is what boot rom code is
	 * waiting for. This would wake up the secondary core from WFE
	 */
#define SIRFSOC_CPU1_JUMPADDR_OFFSET 0x2bc
	FUNC1(FUNC0(sirfsoc_secondary_startup),
		clk_base + SIRFSOC_CPU1_JUMPADDR_OFFSET);

#define SIRFSOC_CPU1_WAKEMAGIC_OFFSET 0x2b8
	FUNC1(0x3CAF5D62,
		clk_base + SIRFSOC_CPU1_WAKEMAGIC_OFFSET);

	/* make sure write buffer is drained */
	FUNC4();

	FUNC8(&boot_lock);

	/*
	 * The secondary processor is waiting to be released from
	 * the holding pen - release it, then wait for it to flag
	 * that it has been released by resetting prima2_pen_release.
	 *
	 * Note that "prima2_pen_release" is the hardware CPU ID, whereas
	 * "cpu" is Linux's internal ID.
	 */
	prima2_pen_release = FUNC2(cpu);
	FUNC10(&prima2_pen_release);

	/*
	 * Send the secondary CPU SEV, thereby causing the boot monitor to read
	 * the JUMPADDR and WAKEMAGIC, and branch to the address found there.
	 */
	FUNC3();

	timeout = jiffies + (1 * HZ);
	while (FUNC11(jiffies, timeout)) {
		FUNC7();
		if (prima2_pen_release == -1)
			break;

		FUNC12(10);
	}

	/*
	 * now the secondary core is starting up let it run its
	 * calibrations, then wait for it to finish
	 */
	FUNC9(&boot_lock);

	return prima2_pen_release != -1 ? -ENOSYS : 0;
}