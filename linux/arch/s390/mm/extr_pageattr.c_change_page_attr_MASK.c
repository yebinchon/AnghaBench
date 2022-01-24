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

/* Variables and functions */
 int EINVAL ; 
 unsigned long MODULES_END ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  cpa_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC3 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (unsigned long) ; 
 int FUNC6 (int /*<<< orphan*/ *,unsigned long,unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC7(unsigned long addr, unsigned long end,
			    unsigned long flags)
{
	unsigned long next;
	int rc = -EINVAL;
	pgd_t *pgdp;

	if (addr == end)
		return 0;
	if (end >= MODULES_END)
		return -EINVAL;
	FUNC1(&cpa_mutex);
	pgdp = FUNC5(addr);
	do {
		if (FUNC4(*pgdp))
			break;
		next = FUNC3(addr, end);
		rc = FUNC6(pgdp, addr, next, flags);
		if (rc)
			break;
		FUNC0();
	} while (pgdp++, addr = next, addr < end && !rc);
	FUNC2(&cpa_mutex);
	return rc;
}