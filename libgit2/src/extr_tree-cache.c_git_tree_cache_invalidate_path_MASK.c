#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int entry_count; } ;
typedef  TYPE_1__ git_tree_cache ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*,char const*,char const*) ; 
 char* FUNC1 (char const*,char) ; 

void FUNC2(git_tree_cache *tree, const char *path)
{
	const char *ptr = path, *end;

	if (tree == NULL)
		return;

	tree->entry_count = -1;

	while (ptr != NULL) {
		end = FUNC1(ptr, '/');

		if (end == NULL) /* End of path */
			break;

		tree = FUNC0(tree, ptr, end);
		if (tree == NULL) /* We don't have that tree */
			return;

		tree->entry_count = -1;
		ptr = end + 1;
	}
}