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
typedef  int /*<<< orphan*/  git_merge_driver ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int GIT_EEXISTS ; 
 int /*<<< orphan*/  GIT_ERROR_MERGE ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__ merge_driver_registry ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ *) ; 

int FUNC6(const char *name, git_merge_driver *driver)
{
	int error;

	FUNC0(name && driver);

	if (FUNC2(&merge_driver_registry.lock) < 0) {
		FUNC1(GIT_ERROR_OS, "failed to lock merge driver registry");
		return -1;
	}

	if (!FUNC4(NULL, name)) {
		FUNC1(GIT_ERROR_MERGE, "attempt to reregister existing driver '%s'",
			name);
		error = GIT_EEXISTS;
		goto done;
	}

	error = FUNC5(name, driver);

done:
	FUNC3(&merge_driver_registry.lock);
	return error;
}