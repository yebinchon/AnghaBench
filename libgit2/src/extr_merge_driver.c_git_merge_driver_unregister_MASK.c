#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int initialized; TYPE_2__* driver; } ;
typedef  TYPE_1__ git_merge_driver_entry ;
struct TYPE_8__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  drivers; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* shutdown ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_ERROR_MERGE ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 TYPE_4__ merge_driver_registry ; 
 TYPE_1__* FUNC5 (size_t*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

int FUNC7(const char *name)
{
	git_merge_driver_entry *entry;
	size_t pos;
	int error = 0;

	if (FUNC2(&merge_driver_registry.lock) < 0) {
		FUNC1(GIT_ERROR_OS, "failed to lock merge driver registry");
		return -1;
	}

	if ((entry = FUNC5(&pos, name)) == NULL) {
		FUNC1(GIT_ERROR_MERGE, "cannot find merge driver '%s' to unregister",
			name);
		error = GIT_ENOTFOUND;
		goto done;
	}

	FUNC4(&merge_driver_registry.drivers, pos);

	if (entry->initialized && entry->driver->shutdown) {
		entry->driver->shutdown(entry->driver);
		entry->initialized = false;
	}

	FUNC0(entry);

done:
	FUNC3(&merge_driver_registry.lock);
	return error;
}