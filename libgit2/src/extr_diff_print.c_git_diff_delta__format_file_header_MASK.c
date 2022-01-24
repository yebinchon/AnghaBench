#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {scalar_t__ mode; int /*<<< orphan*/  path; } ;
struct TYPE_22__ {scalar_t__ mode; int /*<<< orphan*/  path; } ;
struct TYPE_24__ {scalar_t__ status; int flags; TYPE_2__ new_file; TYPE_1__ old_file; } ;
typedef  TYPE_3__ git_diff_delta ;
struct TYPE_25__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_4__ git_buf ;

/* Variables and functions */
 char* DIFF_NEW_PREFIX_DEFAULT ; 
 char* DIFF_OLD_PREFIX_DEFAULT ; 
 int GIT_ABBREV_DEFAULT ; 
 TYPE_4__ GIT_BUF_INIT ; 
 scalar_t__ GIT_DELTA_COPIED ; 
 scalar_t__ GIT_DELTA_RENAMED ; 
 int GIT_DIFF_FLAG_BINARY ; 
 int FUNC0 (TYPE_3__ const*) ; 
 int FUNC1 (TYPE_4__*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_4__*,TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_3__ const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,TYPE_3__ const*) ; 
 int FUNC5 (TYPE_4__*,TYPE_3__ const*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 scalar_t__ FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(
	git_buf *out,
	const git_diff_delta *delta,
	const char *oldpfx,
	const char *newpfx,
	int id_strlen)
{
	git_buf old_path = GIT_BUF_INIT, new_path = GIT_BUF_INIT;
	bool unchanged = FUNC0(delta);
	int error = 0;

	if (!oldpfx)
		oldpfx = DIFF_OLD_PREFIX_DEFAULT;
	if (!newpfx)
		newpfx = DIFF_NEW_PREFIX_DEFAULT;
	if (!id_strlen)
		id_strlen = GIT_ABBREV_DEFAULT;

	if ((error = FUNC1(
			&old_path, oldpfx, delta->old_file.path)) < 0 ||
		(error = FUNC1(
			&new_path, newpfx, delta->new_file.path)) < 0)
		goto done;

	FUNC6(out);

	FUNC9(out, "diff --git %s %s\n",
		old_path.ptr, new_path.ptr);

	if (delta->status == GIT_DELTA_RENAMED ||
		(delta->status == GIT_DELTA_COPIED && unchanged)) {
		if ((error = FUNC2(out, delta)) < 0)
			goto done;
	}

	if (!unchanged) {
		if ((error = FUNC5(out, delta, id_strlen)) < 0)
			goto done;

		if ((delta->flags & GIT_DIFF_FLAG_BINARY) == 0)
			FUNC3(out, delta,
				"--- %s\n+++ %s\n", old_path.ptr, new_path.ptr);
	}

	if (unchanged && delta->old_file.mode != delta->new_file.mode)
		FUNC4(out, delta);

	if (FUNC8(out))
		error = -1;

done:
	FUNC7(&old_path);
	FUNC7(&new_path);

	return error;
}