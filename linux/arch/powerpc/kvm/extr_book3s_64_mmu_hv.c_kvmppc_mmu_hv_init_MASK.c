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
 int /*<<< orphan*/  CPU_FTR_HVMODE ; 
 int EINVAL ; 
 unsigned long LPID_RSVD ; 
 int /*<<< orphan*/  MMU_FTR_LOCKLESS_TLBIE ; 
 int /*<<< orphan*/  SPRN_LPID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(void)
{
	unsigned long host_lpid, rsvd_lpid;

	if (!FUNC4(MMU_FTR_LOCKLESS_TLBIE))
		return -EINVAL;

	/* POWER7 has 10-bit LPIDs (12-bit in POWER8) */
	host_lpid = 0;
	if (FUNC0(CPU_FTR_HVMODE))
		host_lpid = FUNC3(SPRN_LPID);
	rsvd_lpid = LPID_RSVD;

	FUNC2(rsvd_lpid + 1);

	FUNC1(host_lpid);
	/* rsvd_lpid is reserved for use in partition switching */
	FUNC1(rsvd_lpid);

	return 0;
}