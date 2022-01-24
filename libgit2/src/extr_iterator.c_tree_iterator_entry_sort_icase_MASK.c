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
struct TYPE_2__ {scalar_t__ parent_path; int /*<<< orphan*/  tree_entry; } ;
typedef  TYPE_1__ tree_iterator_entry ;

/* Variables and functions */
 int FUNC0 (scalar_t__,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(const void *ptr_a, const void *ptr_b)
{
	const tree_iterator_entry *a = (const tree_iterator_entry *)ptr_a;
	const tree_iterator_entry *b = (const tree_iterator_entry *)ptr_b;

	int c = FUNC1(a->tree_entry, b->tree_entry, true);

	/* stabilize the sort order for filenames that are (case insensitively)
	 * the same by examining the parent path (case sensitively) before
	 * falling back to a case sensitive sort of the filename.
	 */
	if (!c && a->parent_path != b->parent_path)
		c = FUNC0(a->parent_path, b->parent_path);

	if (!c)
		c = FUNC1(a->tree_entry, b->tree_entry, false);

	return c;
}