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
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 unsigned long FUNC2 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (unsigned long) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(pgd_t *dst_pgdp, unsigned long start,
			    unsigned long end)
{
	unsigned long next;
	unsigned long addr = start;
	pgd_t *src_pgdp = FUNC4(start);

	dst_pgdp = FUNC5(dst_pgdp, start);
	do {
		next = FUNC2(addr, end);
		if (FUNC3(FUNC0(*src_pgdp)))
			continue;
		if (FUNC1(dst_pgdp, src_pgdp, addr, next))
			return -ENOMEM;
	} while (dst_pgdp++, src_pgdp++, addr = next, addr != end);

	return 0;
}