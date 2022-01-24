#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_4__ {int should_write; } ;
typedef  TYPE_1__ git_indexwriter ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 unsigned int GIT_CHECKOUT_DONT_WRITE_INDEX ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

int FUNC2(
	git_indexwriter *writer,
	git_repository *repo,
	unsigned int *checkout_strategy)
{
	git_index *index;
	int error;

	if ((error = FUNC1(&index, repo)) < 0 ||
		(error = FUNC0(writer, index)) < 0)
		return error;

	writer->should_write = (*checkout_strategy & GIT_CHECKOUT_DONT_WRITE_INDEX) == 0;
	*checkout_strategy |= GIT_CHECKOUT_DONT_WRITE_INDEX;

	return 0;
}