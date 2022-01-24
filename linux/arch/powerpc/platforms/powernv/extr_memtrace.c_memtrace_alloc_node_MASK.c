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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static u64 FUNC9(u32 nid, u64 size)
{
	u64 start_pfn, end_pfn, nr_pages, pfn;
	u64 base_pfn;
	u64 bytes = FUNC2();

	if (!FUNC5(nid))
		return 0;

	start_pfn = FUNC6(nid);
	end_pfn = FUNC4(nid);
	nr_pages = size >> PAGE_SHIFT;

	/* Trace memory needs to be aligned to the size */
	end_pfn = FUNC7(end_pfn - nr_pages, nr_pages);

	FUNC1();
	for (base_pfn = end_pfn; base_pfn > start_pfn; base_pfn -= nr_pages) {
		if (FUNC3(nid, base_pfn, nr_pages) == true) {
			/*
			 * Remove memory in memory block size chunks so that
			 * iomem resources are always split to the same size and
			 * we never try to remove memory that spans two iomem
			 * resources.
			 */
			end_pfn = base_pfn + nr_pages;
			for (pfn = base_pfn; pfn < end_pfn; pfn += bytes>> PAGE_SHIFT) {
				FUNC0(nid, pfn << PAGE_SHIFT, bytes);
			}
			FUNC8();
			return base_pfn << PAGE_SHIFT;
		}
	}
	FUNC8();

	return 0;
}