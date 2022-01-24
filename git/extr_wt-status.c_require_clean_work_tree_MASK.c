#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct repository {int /*<<< orphan*/  index; } ;
struct lock_file {int dummy; } ;

/* Variables and functions */
 struct lock_file LOCK_INIT ; 
 int /*<<< orphan*/  REFRESH_QUIET ; 
 char const* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct repository*,int) ; 
 scalar_t__ FUNC4 (struct repository*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct repository*,struct lock_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct repository*,struct lock_file*) ; 
 int /*<<< orphan*/  FUNC8 (struct lock_file*) ; 

int FUNC9(struct repository *r,
			    const char *action,
			    const char *hint,
			    int ignore_submodules,
			    int gently)
{
	struct lock_file lock_file = LOCK_INIT;
	int err = 0, fd;

	fd = FUNC6(r, &lock_file, 0);
	FUNC5(r->index, REFRESH_QUIET, NULL, NULL, NULL);
	if (0 <= fd)
		FUNC7(r, &lock_file);
	FUNC8(&lock_file);

	if (FUNC4(r, ignore_submodules)) {
		/* TRANSLATORS: the action is e.g. "pull with rebase" */
		FUNC1(FUNC0("cannot %s: You have unstaged changes."), FUNC0(action));
		err = 1;
	}

	if (FUNC3(r, ignore_submodules)) {
		if (err)
			FUNC1(FUNC0("additionally, your index contains uncommitted changes."));
		else
			FUNC1(FUNC0("cannot %s: Your index contains uncommitted changes."),
			      FUNC0(action));
		err = 1;
	}

	if (err) {
		if (hint)
			FUNC1("%s", hint);
		if (!gently)
			FUNC2(128);
	}

	return err;
}