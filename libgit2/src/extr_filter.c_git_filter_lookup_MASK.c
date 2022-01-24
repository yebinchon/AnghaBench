#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * filter; int /*<<< orphan*/  initialized; } ;
typedef  TYPE_1__ git_filter_def ;
typedef  int /*<<< orphan*/  git_filter ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 TYPE_3__ filter_registry ; 
 TYPE_1__* FUNC1 (size_t*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

git_filter *FUNC5(const char *name)
{
	size_t pos;
	git_filter_def *fdef;
	git_filter *filter = NULL;

	if (FUNC3(&filter_registry.lock) < 0) {
		FUNC2(GIT_ERROR_OS, "failed to lock filter registry");
		return NULL;
	}

	if ((fdef = FUNC1(&pos, name)) == NULL ||
		(!fdef->initialized && FUNC0(fdef) < 0))
		goto done;

	filter = fdef->filter;

done:
	FUNC4(&filter_registry.lock);
	return filter;
}