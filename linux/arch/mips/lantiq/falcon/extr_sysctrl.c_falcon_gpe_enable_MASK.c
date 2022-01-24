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
 unsigned int GPEFREQ_MASK ; 
 unsigned int GPEFREQ_OFFSET ; 
 int GPPC_OFFSET ; 
 int /*<<< orphan*/  STATUS_CONFIG ; 
 int /*<<< orphan*/  SYS1_INFRAC ; 
 int /*<<< orphan*/  SYSCTL_SYS1 ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(void)
{
	unsigned int freq;
	unsigned int status;

	/* if if the clock is already enabled */
	status = FUNC1(SYSCTL_SYS1, SYS1_INFRAC);
	if (status & (1 << (GPPC_OFFSET + 1)))
		return;

	freq = (FUNC0(STATUS_CONFIG) &
		GPEFREQ_MASK) >>
		GPEFREQ_OFFSET;
	if (freq == 0)
		freq = 1; /* use 625MHz on unfused chip */

	/* apply new frequency */
	FUNC2(SYSCTL_SYS1, 7 << (GPPC_OFFSET + 1),
		freq << (GPPC_OFFSET + 2) , SYS1_INFRAC);
	FUNC3(1);

	/* enable new frequency */
	FUNC2(SYSCTL_SYS1, 0, 1 << (GPPC_OFFSET + 1), SYS1_INFRAC);
	FUNC3(1);
}