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
typedef  int /*<<< orphan*/  tree_iterator_entry ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
struct TYPE_6__ {TYPE_1__ base; int /*<<< orphan*/  root; int /*<<< orphan*/  entry_pool; } ;
typedef  TYPE_2__ tree_iterator ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ITERATOR_FIRST_ACCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(tree_iterator *iter)
{
	int error;

	FUNC0(&iter->entry_pool, sizeof(tree_iterator_entry));

	if ((error = FUNC1(iter, iter->root, NULL)) < 0)
		return error;

	iter->base.flags &= ~GIT_ITERATOR_FIRST_ACCESS;

	return 0;
}