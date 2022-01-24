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
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 struct page* FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static struct page *FUNC5(pte_t pte)
{
	unsigned long pfn = FUNC3(pte);
	struct page *page;

	if (FUNC4(!FUNC2(pfn)))
		return NULL;
	page = FUNC1(pfn);
	if (FUNC0(page))
		return NULL;
	return page;
}