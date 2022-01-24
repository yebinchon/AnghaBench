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
struct page_change_data {void* clear_mask; void* set_mask; } ;
typedef  void* pgprot_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,unsigned long,unsigned long,int /*<<< orphan*/ ,struct page_change_data*) ; 
 int /*<<< orphan*/  change_page_range ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  init_mm ; 

__attribute__((used)) static int FUNC2(unsigned long start, unsigned long size,
				pgprot_t set_mask, pgprot_t clear_mask)
{
	struct page_change_data data;
	int ret;

	data.set_mask = set_mask;
	data.clear_mask = clear_mask;

	ret = FUNC0(&init_mm, start, size, change_page_range,
					&data);

	FUNC1(start, start + size);
	return ret;
}