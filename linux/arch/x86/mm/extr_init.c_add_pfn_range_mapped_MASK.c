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
 int /*<<< orphan*/  E820_MAX_ENTRIES ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  max_low_pfn_mapped ; 
 int /*<<< orphan*/  max_pfn_mapped ; 
 unsigned long FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  nr_pfn_mapped ; 
 int /*<<< orphan*/  pfn_mapped ; 

__attribute__((used)) static void FUNC4(unsigned long start_pfn, unsigned long end_pfn)
{
	nr_pfn_mapped = FUNC0(pfn_mapped, E820_MAX_ENTRIES,
					     nr_pfn_mapped, start_pfn, end_pfn);
	nr_pfn_mapped = FUNC1(pfn_mapped, E820_MAX_ENTRIES);

	max_pfn_mapped = FUNC2(max_pfn_mapped, end_pfn);

	if (start_pfn < (1UL<<(32-PAGE_SHIFT)))
		max_low_pfn_mapped = FUNC2(max_low_pfn_mapped,
					 FUNC3(end_pfn, 1UL<<(32-PAGE_SHIFT)));
}