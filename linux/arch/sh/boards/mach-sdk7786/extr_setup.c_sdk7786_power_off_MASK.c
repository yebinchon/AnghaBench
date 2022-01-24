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
 int /*<<< orphan*/  PWRCR ; 
 int PWRCR_PDWNACK ; 
 int PWRCR_PDWNREQ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void)
{
	FUNC2(FUNC1(PWRCR) | PWRCR_PDWNREQ, PWRCR);

	/*
	 * It can take up to 20us for the R8C to do its job, back off and
	 * wait a bit until we've been shut off. Even though newer FPGA
	 * versions don't set the ACK bit, the latency issue remains.
	 */
	while ((FUNC1(PWRCR) & PWRCR_PDWNACK) == 0)
		FUNC0();
}