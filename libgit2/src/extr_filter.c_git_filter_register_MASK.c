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
typedef  int /*<<< orphan*/  git_filter ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int GIT_EEXISTS ; 
 int /*<<< orphan*/  GIT_ERROR_FILTER ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__ filter_registry ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(
	const char *name, git_filter *filter, int priority)
{
	int error;

	FUNC0(name && filter);

	if (FUNC4(&filter_registry.lock) < 0) {
		FUNC3(GIT_ERROR_OS, "failed to lock filter registry");
		return -1;
	}

	if (!FUNC1(NULL, name)) {
		FUNC3(
			GIT_ERROR_FILTER, "attempt to reregister existing filter '%s'", name);
		error = GIT_EEXISTS;
		goto done;
	}

	error = FUNC2(name, filter, priority);

done:
	FUNC5(&filter_registry.lock);
	return error;
}