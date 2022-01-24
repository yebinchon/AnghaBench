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
typedef  unsigned long* vulp ;
typedef  unsigned int* vuip ;

/* Variables and functions */
 scalar_t__ LCA_IOC_STAT0 ; 
 unsigned long LCA_IOC_STAT0_CODE_MASK ; 
 unsigned long LCA_IOC_STAT0_CODE_SHIFT ; 
 unsigned long LCA_IOC_STAT0_ERR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static unsigned int
FUNC6(unsigned long addr)
{
	unsigned long flags, code, stat0;
	unsigned int value;

	FUNC2(flags);

	/* Reset status register to avoid losing errors.  */
	stat0 = *(vulp)LCA_IOC_STAT0;
	*(vulp)LCA_IOC_STAT0 = stat0;
	FUNC3();

	/* Access configuration space.  */
	value = *(vuip)addr;
	FUNC0();

	stat0 = *(vulp)LCA_IOC_STAT0;
	if (stat0 & LCA_IOC_STAT0_ERR) {
		code = ((stat0 >> LCA_IOC_STAT0_CODE_SHIFT)
			& LCA_IOC_STAT0_CODE_MASK);
		if (code != 1) {
			FUNC4("lca.c:conf_read: got stat0=%lx\n", stat0);
		}

		/* Reset error status.  */
		*(vulp)LCA_IOC_STAT0 = stat0;
		FUNC3();

		/* Reset machine check.  */
		FUNC5(0x7);

		value = 0xffffffff;
	}
	FUNC1(flags);
	return value;
}