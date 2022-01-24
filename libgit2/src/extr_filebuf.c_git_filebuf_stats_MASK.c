#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct stat {scalar_t__ st_size; int /*<<< orphan*/  st_mtime; } ;
struct TYPE_3__ {int /*<<< orphan*/  path_original; int /*<<< orphan*/  fd; scalar_t__ fd_is_open; } ;
typedef  TYPE_1__ git_filebuf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct stat*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct stat*) ; 

int FUNC3(time_t *mtime, size_t *size, git_filebuf *file)
{
	int res;
	struct stat st;

	if (file->fd_is_open)
		res = FUNC1(file->fd, &st);
	else
		res = FUNC2(file->path_original, &st);

	if (res < 0) {
		FUNC0(GIT_ERROR_OS, "could not get stat info for '%s'",
			file->path_original);
		return res;
	}

	if (mtime)
		*mtime = st.st_mtime;
	if (size)
		*size = (size_t)st.st_size;

	return 0;
}