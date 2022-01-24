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
struct page_change_data {int /*<<< orphan*/  clear_mask; int /*<<< orphan*/  set_mask; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PTE_VALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct page_change_data*) ; 
 int /*<<< orphan*/  change_page_range ; 
 int /*<<< orphan*/  init_mm ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  rodata_full ; 

int FUNC3(struct page *page)
{
	struct page_change_data data = {
		.set_mask = FUNC0(0),
		.clear_mask = FUNC0(PTE_VALID),
	};

	if (!rodata_full)
		return 0;

	return FUNC1(&init_mm,
				   (unsigned long)FUNC2(page),
				   PAGE_SIZE, change_page_range, &data);
}