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
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long PMD_MASK ; 
 unsigned long PMD_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 unsigned long FUNC2 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC7 (int /*<<< orphan*/ *,unsigned long,unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC8(pud_t *pudp, unsigned long addr, unsigned long end,
			  unsigned long flags)
{
	unsigned long next;
	pmd_t *pmdp;
	int rc = 0;

	pmdp = FUNC5(pudp, addr);
	do {
		if (FUNC4(*pmdp))
			return -EINVAL;
		next = FUNC2(addr, end);
		if (FUNC3(*pmdp)) {
			if (addr & ~PMD_MASK || addr + PMD_SIZE > next) {
				rc = FUNC6(pmdp, addr);
				if (rc)
					return rc;
				continue;
			}
			FUNC1(pmdp, addr, flags);
		} else {
			rc = FUNC7(pmdp, addr, next, flags);
			if (rc)
				return rc;
		}
		pmdp++;
		addr = next;
		FUNC0();
	} while (addr < end);
	return rc;
}