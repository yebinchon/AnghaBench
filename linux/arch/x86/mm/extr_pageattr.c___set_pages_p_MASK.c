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
struct cpa_data {unsigned long* vaddr; int numpages; int /*<<< orphan*/  flags; int /*<<< orphan*/  mask_clr; int /*<<< orphan*/  mask_set; int /*<<< orphan*/ * pgd; } ;

/* Variables and functions */
 int _PAGE_PRESENT ; 
 int _PAGE_RW ; 
 int FUNC0 (struct cpa_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct page*) ; 

__attribute__((used)) static int FUNC3(struct page *page, int numpages)
{
	unsigned long tempaddr = (unsigned long) FUNC2(page);
	struct cpa_data cpa = { .vaddr = &tempaddr,
				.pgd = NULL,
				.numpages = numpages,
				.mask_set = FUNC1(_PAGE_PRESENT | _PAGE_RW),
				.mask_clr = FUNC1(0),
				.flags = 0};

	/*
	 * No alias checking needed for setting present flag. otherwise,
	 * we may need to break large pages for 64-bit kernel text
	 * mappings (this adds to complexity if we want to do this from
	 * atomic context especially). Let's keep it simple!
	 */
	return FUNC0(&cpa, 0);
}