#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  git_buf ;
typedef  int /*<<< orphan*/  git_blob ;
struct TYPE_7__ {int /*<<< orphan*/  stat_calls; } ;
struct TYPE_6__ {int /*<<< orphan*/  dir_mode; } ;
struct TYPE_8__ {TYPE_2__ perfdata; scalar_t__ can_symlink; TYPE_1__ opts; } ;
typedef  TYPE_3__ checkout_data ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_ERROR_CHECKOUT ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  GIT_FILEMODE_LINK ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC5 (TYPE_3__*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*,struct stat*) ; 
 int FUNC7 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC8(
	checkout_data *data,
	struct stat *st,
	git_blob *blob,
	const char *path)
{
	git_buf linktarget = GIT_BUF_INIT;
	int error;

	if ((error = FUNC5(data, path, data->opts.dir_mode)) < 0)
		return error;

	if ((error = FUNC0(&linktarget, blob)) < 0)
		return error;

	if (data->can_symlink) {
		if ((error = FUNC7(FUNC1(&linktarget), path)) < 0)
			FUNC3(GIT_ERROR_OS, "could not create symlink %s", path);
	} else {
		error = FUNC4(FUNC1(&linktarget), path);
	}

	if (!error) {
		data->perfdata.stat_calls++;

		if ((error = FUNC6(path, st)) < 0)
			FUNC3(GIT_ERROR_CHECKOUT, "could not stat symlink %s", path);

		st->st_mode = GIT_FILEMODE_LINK;
	}

	FUNC2(&linktarget);

	return error;
}