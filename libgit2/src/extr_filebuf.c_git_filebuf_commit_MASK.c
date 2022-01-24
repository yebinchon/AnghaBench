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
struct TYPE_6__ {int fd_is_open; int fd; int did_rename; scalar_t__ path_original; scalar_t__ do_fsync; scalar_t__ path_lock; int /*<<< orphan*/  flush_mode; } ;
typedef  TYPE_1__ git_filebuf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  Z_FINISH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 

int FUNC9(git_filebuf *file)
{
	/* temporary files cannot be committed */
	FUNC0(file && file->path_original);

	file->flush_mode = Z_FINISH;
	FUNC1(file);

	if (FUNC8(file) < 0)
		goto on_error;

	file->fd_is_open = false;

	if (file->do_fsync && FUNC6(file->fd) < 0) {
		FUNC2(GIT_ERROR_OS, "failed to fsync '%s'", file->path_lock);
		goto on_error;
	}

	if (FUNC5(file->fd) < 0) {
		FUNC2(GIT_ERROR_OS, "failed to close file at '%s'", file->path_lock);
		goto on_error;
	}

	file->fd = -1;

	if (FUNC7(file->path_lock, file->path_original) < 0) {
		FUNC2(GIT_ERROR_OS, "failed to rename lockfile to '%s'", file->path_original);
		goto on_error;
	}

	if (file->do_fsync && FUNC4(file->path_original) < 0)
		goto on_error;

	file->did_rename = true;

	FUNC3(file);
	return 0;

on_error:
	FUNC3(file);
	return -1;
}