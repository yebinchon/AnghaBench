#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree_iterator_frame ;
struct TYPE_5__ {int /*<<< orphan*/ * tree_entry; } ;
typedef  TYPE_1__ tree_iterator_entry ;
typedef  int /*<<< orphan*/  tree_iterator ;
typedef  int /*<<< orphan*/  git_tree_entry ;
struct TYPE_6__ {scalar_t__ type; } ;
typedef  TYPE_2__ git_iterator ;

/* Variables and functions */
 scalar_t__ GIT_ITERATOR_TYPE_TREE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(
	const git_tree_entry **tree_entry, git_iterator *i)
{
	tree_iterator *iter;
	tree_iterator_frame *frame;
	tree_iterator_entry *entry;

	FUNC0(i->type == GIT_ITERATOR_TYPE_TREE);

	iter = (tree_iterator *)i;

	frame = FUNC2(iter);
	entry = FUNC1(frame);

	*tree_entry = entry->tree_entry;
	return 0;
}