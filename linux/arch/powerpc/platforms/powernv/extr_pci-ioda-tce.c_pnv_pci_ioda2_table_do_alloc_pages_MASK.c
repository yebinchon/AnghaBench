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
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int TCE_PCI_READ ; 
 int TCE_PCI_WRITE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int,unsigned int) ; 

__attribute__((used)) static __be64 *FUNC3(int nid, unsigned int shift,
		unsigned int levels, unsigned long limit,
		unsigned long *current_offset, unsigned long *total_allocated)
{
	__be64 *addr, *tmp;
	unsigned long allocated = 1UL << shift;
	unsigned int entries = 1UL << (shift - 3);
	long i;

	addr = FUNC2(nid, shift);
	*total_allocated += allocated;

	--levels;
	if (!levels) {
		*current_offset += allocated;
		return addr;
	}

	for (i = 0; i < entries; ++i) {
		tmp = FUNC3(nid, shift,
				levels, limit, current_offset, total_allocated);
		if (!tmp)
			break;

		addr[i] = FUNC1(FUNC0(tmp) |
				TCE_PCI_READ | TCE_PCI_WRITE);

		if (*current_offset >= limit)
			break;
	}

	return addr;
}