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
 scalar_t__ PAGES_PER_SECTION ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long,unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 unsigned long sections_per_block ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 

__attribute__((used)) static bool FUNC7(unsigned long start_pfn)
{
	unsigned long section_nr = FUNC2(start_pfn);
	unsigned long section_nr_end = section_nr + sections_per_block;
	unsigned long pfn = start_pfn;

	/*
	 * memmap between sections is not contiguous except with
	 * SPARSEMEM_VMEMMAP. We lookup the page once per section
	 * and assume memmap is contiguous within each section
	 */
	for (; section_nr < section_nr_end; section_nr++) {
		if (FUNC0(!FUNC3(pfn)))
			return false;

		if (!FUNC5(section_nr)) {
			FUNC4("section %ld pfn[%lx, %lx) not present\n",
				section_nr, pfn, pfn + PAGES_PER_SECTION);
			return false;
		} else if (!FUNC6(section_nr)) {
			FUNC4("section %ld pfn[%lx, %lx) no valid memmap\n",
				section_nr, pfn, pfn + PAGES_PER_SECTION);
			return false;
		} else if (FUNC1(section_nr)) {
			FUNC4("section %ld pfn[%lx, %lx) is already online\n",
				section_nr, pfn, pfn + PAGES_PER_SECTION);
			return false;
		}
		pfn += PAGES_PER_SECTION;
	}

	return true;
}