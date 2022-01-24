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
typedef  int phys_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CM_GCR_L2_ONLY_SYNC_BASE_SYNCBASE ; 
 int CM_GCR_L2_ONLY_SYNC_BASE_SYNCEN ; 
 unsigned int CM_GCR_REV_MAJOR ; 
 int /*<<< orphan*/  MIPS_CM_L2SYNC_SIZE ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mips_cm_l2sync_base ; 
 int FUNC3 () ; 
 unsigned int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(void)
{
	unsigned major_rev;
	phys_addr_t addr;

	/* L2-only sync was introduced with CM major revision 6 */
	major_rev = (FUNC4() & CM_GCR_REV_MAJOR) >>
		FUNC1(CM_GCR_REV_MAJOR);
	if (major_rev < 6)
		return;

	/* Find a location for the L2 sync region */
	addr = FUNC3();
	FUNC0((addr & CM_GCR_L2_ONLY_SYNC_BASE_SYNCBASE) != addr);
	if (!addr)
		return;

	/* Set the region base address & enable it */
	FUNC5(addr | CM_GCR_L2_ONLY_SYNC_BASE_SYNCEN);

	/* Map the region */
	mips_cm_l2sync_base = FUNC2(addr, MIPS_CM_L2SYNC_SIZE);
}