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
typedef  int /*<<< orphan*/  pgd_t ;
typedef  int /*<<< orphan*/  p4d_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long FUNC1 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (int /*<<< orphan*/ *,unsigned long,unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC5(pgd_t *pgd, unsigned long addr, unsigned long end,
			  unsigned long flags)
{
	unsigned long next;
	p4d_t *p4dp;
	int rc = 0;

	p4dp = FUNC3(pgd, addr);
	do {
		if (FUNC2(*p4dp))
			return -EINVAL;
		next = FUNC1(addr, end);
		rc = FUNC4(p4dp, addr, next, flags);
		p4dp++;
		addr = next;
		FUNC0();
	} while (addr < end && !rc);
	return rc;
}