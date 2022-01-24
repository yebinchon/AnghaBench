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
 int AU1100_GPIO14_INT ; 
 int AU1100_GPIO19_INT ; 
 int /*<<< orphan*/  BCSR_WHOAMI ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BCSR_WHOAMI_DB1100 ; 
 int /*<<< orphan*/  IRQ_TYPE_EDGE_BOTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  db1100_mmc_cd ; 
 int /*<<< orphan*/  FUNC2 (int,void*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,void*) ; 

__attribute__((used)) static int FUNC5(void *mmc_host, int en)
{
	int ret = 0, irq;

	if (FUNC0(FUNC1(BCSR_WHOAMI)) == BCSR_WHOAMI_DB1100)
		irq = AU1100_GPIO19_INT;
	else
		irq = AU1100_GPIO14_INT;	/* PB1100 SD0 CD# */

	if (en) {
		FUNC3(irq, IRQ_TYPE_EDGE_BOTH);
		ret = FUNC4(irq, db1100_mmc_cd, 0,
				  "sd0_cd", mmc_host);
	} else
		FUNC2(irq, mmc_host);
	return ret;
}