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
 int ENOMEM ; 
 unsigned long _REGION1_ENTRY ; 
 unsigned long _REGION1_INDEX ; 
 unsigned long _REGION1_SHIFT ; 
 int /*<<< orphan*/  _REGION2_ENTRY_EMPTY ; 
 unsigned long _REGION_ENTRY_INVALID ; 
 unsigned long _REGION_ENTRY_ORIGIN ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (unsigned long,unsigned long) ; 
 int FUNC3 (unsigned long,unsigned long,unsigned long,int) ; 

__attribute__((used)) static int FUNC4(unsigned long origin, unsigned long addr,
			     unsigned long end, int alloc)
{
	unsigned long *rfte, next, table;
	int rc;

	rfte = (unsigned long *) origin;
	rfte += (addr & _REGION1_INDEX) >> _REGION1_SHIFT;
	do {
		next = FUNC2(addr, end);
		if (*rfte & _REGION_ENTRY_INVALID) {
			if (!alloc)
				continue;
			table = FUNC0(_REGION2_ENTRY_EMPTY);
			if (!table)
				return -ENOMEM;
			*rfte = table | _REGION1_ENTRY;
		}
		table = *rfte & _REGION_ENTRY_ORIGIN;
		rc = FUNC3(table, addr, next, alloc);
		if (rc)
			return rc;
		if (!alloc)
			FUNC1(table);
	} while (rfte++, addr = next, addr < end);
	return 0;
}