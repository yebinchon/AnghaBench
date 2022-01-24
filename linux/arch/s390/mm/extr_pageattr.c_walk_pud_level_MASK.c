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
typedef  int /*<<< orphan*/  p4d_t ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long PUD_MASK ; 
 unsigned long PUD_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 unsigned long FUNC2 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC7 (int /*<<< orphan*/ *,unsigned long,unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC8(p4d_t *p4d, unsigned long addr, unsigned long end,
			  unsigned long flags)
{
	unsigned long next;
	pud_t *pudp;
	int rc = 0;

	pudp = FUNC5(p4d, addr);
	do {
		if (FUNC4(*pudp))
			return -EINVAL;
		next = FUNC2(addr, end);
		if (FUNC3(*pudp)) {
			if (addr & ~PUD_MASK || addr + PUD_SIZE > next) {
				rc = FUNC6(pudp, addr);
				if (rc)
					break;
				continue;
			}
			FUNC1(pudp, addr, flags);
		} else {
			rc = FUNC7(pudp, addr, next, flags);
		}
		pudp++;
		addr = next;
		FUNC0();
	} while (addr < end && !rc);
	return rc;
}