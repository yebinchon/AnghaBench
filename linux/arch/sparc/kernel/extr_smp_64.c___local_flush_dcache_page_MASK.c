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
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/ * FUNC4 (struct page*) ; 
 scalar_t__ spitfire ; 
 scalar_t__ tlb_type ; 

__attribute__((used)) static inline void FUNC5(struct page *page)
{
#ifdef DCACHE_ALIASING_POSSIBLE
	__flush_dcache_page(page_address(page),
			    ((tlb_type == spitfire) &&
			     page_mapping_file(page) != NULL));
#else
	if (FUNC4(page) != NULL &&
	    tlb_type == spitfire)
		FUNC1(FUNC2(FUNC3(page)));
#endif
}