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
struct address_space {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PG_dcache_clean ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 struct address_space* FUNC5 (struct page*) ; 

__attribute__((used)) static void FUNC6(void *arg)
{
	struct page *page = arg;
	struct address_space *mapping = FUNC5(page);

	if (mapping && !FUNC3(mapping))
		FUNC2(PG_dcache_clean, &page->flags);
	else
		FUNC0(FUNC1(FUNC4(page)));
}