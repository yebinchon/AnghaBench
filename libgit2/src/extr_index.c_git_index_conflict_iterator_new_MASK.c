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
struct TYPE_5__ {int /*<<< orphan*/ * index; } ;
typedef  TYPE_1__ git_index_conflict_iterator ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int,int) ; 

int FUNC3(
	git_index_conflict_iterator **iterator_out,
	git_index *index)
{
	git_index_conflict_iterator *it = NULL;

	FUNC1(iterator_out && index);

	it = FUNC2(1, sizeof(git_index_conflict_iterator));
	FUNC0(it);

	it->index = index;

	*iterator_out = it;
	return 0;
}