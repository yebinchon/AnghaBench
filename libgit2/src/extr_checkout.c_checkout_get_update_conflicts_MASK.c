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
typedef  int /*<<< orphan*/  git_vector ;
typedef  int /*<<< orphan*/  git_iterator ;
struct TYPE_6__ {int strategy; } ;
typedef  TYPE_1__ checkout_data ;

/* Variables and functions */
 int GIT_CHECKOUT_SKIP_UNMERGED ; 
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(
	checkout_data *data,
	git_iterator *workdir,
	git_vector *pathspec)
{
	int error = 0;

	if (data->strategy & GIT_CHECKOUT_SKIP_UNMERGED)
		return 0;

	if ((error = FUNC1(data, workdir, pathspec)) < 0 ||
		(error = FUNC0(data)) < 0 ||
		(error = FUNC2(data)) < 0)
		goto done;

done:
	return error;
}