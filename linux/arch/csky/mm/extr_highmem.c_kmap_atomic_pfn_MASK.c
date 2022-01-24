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
 scalar_t__ FIX_KMAP_BEGIN ; 
 int KM_TYPE_NR ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 unsigned long FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int FUNC2 () ; 
 scalar_t__ kmap_pte ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 

void *FUNC7(unsigned long pfn)
{
	unsigned long vaddr;
	int idx, type;

	FUNC3();

	type = FUNC2();
	idx = type + KM_TYPE_NR*FUNC6();
	vaddr = FUNC0(FIX_KMAP_BEGIN + idx);
	FUNC5(kmap_pte-idx, FUNC4(pfn, PAGE_KERNEL));
	FUNC1(vaddr);

	return (void *) vaddr;
}