#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_rebase_operation ;
struct TYPE_6__ {scalar_t__ type; scalar_t__ inmemory; } ;
typedef  TYPE_1__ git_rebase ;

/* Variables and functions */
 scalar_t__ GIT_REBASE_TYPE_MERGE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ **,TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ **,TYPE_1__*) ; 

int FUNC5(
	git_rebase_operation **out,
	git_rebase *rebase)
{
	int error;

	FUNC1(out && rebase);

	if ((error = FUNC2(rebase)) < 0)
		return error;

	if (rebase->inmemory)
		error = FUNC3(out, rebase);
	else if (rebase->type == GIT_REBASE_TYPE_MERGE)
		error = FUNC4(out, rebase);
	else
		FUNC0();

	return error;
}