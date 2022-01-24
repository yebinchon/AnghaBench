#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct radix_tree_root {int dummy; } ;
struct nullb_page {TYPE_1__* page; } ;
struct nullb {TYPE_2__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  curr_cache; struct radix_tree_root data; struct radix_tree_root cache; } ;
struct TYPE_3__ {scalar_t__ index; } ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nullb_page*) ; 
 scalar_t__ FUNC2 (struct radix_tree_root*,scalar_t__,struct nullb_page*) ; 
 struct nullb_page* FUNC3 (struct radix_tree_root*,scalar_t__) ; 

__attribute__((used)) static struct nullb_page *FUNC4(struct nullb *nullb, u64 idx,
	struct nullb_page *t_page, bool is_cache)
{
	struct radix_tree_root *root;

	root = is_cache ? &nullb->dev->cache : &nullb->dev->data;

	if (FUNC2(root, idx, t_page)) {
		FUNC1(t_page);
		t_page = FUNC3(root, idx);
		FUNC0(!t_page || t_page->page->index != idx);
	} else if (is_cache)
		nullb->dev->curr_cache += PAGE_SIZE;

	return t_page;
}