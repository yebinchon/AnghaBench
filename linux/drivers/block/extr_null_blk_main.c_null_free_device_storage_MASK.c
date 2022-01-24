#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct radix_tree_root {int dummy; } ;
struct nullb_page {TYPE_1__* page; } ;
struct nullb_device {scalar_t__ curr_cache; struct radix_tree_root data; struct radix_tree_root cache; } ;
struct TYPE_2__ {unsigned long index; } ;

/* Variables and functions */
 int FREE_BATCH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nullb_page*) ; 
 struct nullb_page* FUNC2 (struct radix_tree_root*,unsigned long,struct nullb_page*) ; 
 int FUNC3 (struct radix_tree_root*,void**,unsigned long,int) ; 

__attribute__((used)) static void FUNC4(struct nullb_device *dev, bool is_cache)
{
	unsigned long pos = 0;
	int nr_pages;
	struct nullb_page *ret, *t_pages[FREE_BATCH];
	struct radix_tree_root *root;

	root = is_cache ? &dev->cache : &dev->data;

	do {
		int i;

		nr_pages = FUNC3(root,
				(void **)t_pages, pos, FREE_BATCH);

		for (i = 0; i < nr_pages; i++) {
			pos = t_pages[i]->page->index;
			ret = FUNC2(root, pos, t_pages[i]);
			FUNC0(ret != t_pages[i]);
			FUNC1(ret);
		}

		pos++;
	} while (nr_pages == FREE_BATCH);

	if (is_cache)
		dev->curr_cache = 0;
}