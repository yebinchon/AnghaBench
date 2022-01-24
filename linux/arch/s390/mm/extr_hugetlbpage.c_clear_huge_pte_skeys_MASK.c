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
struct page {int /*<<< orphan*/  flags; } ;
struct mm_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PG_arch_1 ; 
 unsigned long PMD_MASK ; 
 unsigned long PMD_SIZE ; 
 unsigned long PUD_MASK ; 
 unsigned long PUD_SIZE ; 
 unsigned long _REGION_ENTRY_TYPE_MASK ; 
 unsigned long _REGION_ENTRY_TYPE_R3 ; 
 unsigned long _SEGMENT_ENTRY_INVALID ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*) ; 
 struct page* FUNC4 (int /*<<< orphan*/ ) ; 
 struct page* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct mm_struct *mm, unsigned long rste)
{
	struct page *page;
	unsigned long size, paddr;

	if (!FUNC3(mm) ||
	    rste & _SEGMENT_ENTRY_INVALID)
		return;

	if ((rste & _REGION_ENTRY_TYPE_MASK) == _REGION_ENTRY_TYPE_R3) {
		page = FUNC5(FUNC1(rste));
		size = PUD_SIZE;
		paddr = rste & PUD_MASK;
	} else {
		page = FUNC4(FUNC0(rste));
		size = PMD_SIZE;
		paddr = rste & PMD_MASK;
	}

	if (!FUNC6(PG_arch_1, &page->flags))
		FUNC2(paddr, paddr + size - 1);
}