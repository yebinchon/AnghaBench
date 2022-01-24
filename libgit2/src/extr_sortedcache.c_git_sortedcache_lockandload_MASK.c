#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct stat {scalar_t__ st_size; } ;
struct TYPE_5__ {int /*<<< orphan*/  path; int /*<<< orphan*/  stamp; } ;
typedef  TYPE_1__ git_sortedcache ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,size_t) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int,struct stat*) ; 

int FUNC9(git_sortedcache *sc, git_buf *buf)
{
	int error, fd;
	struct stat st;

	if ((error = FUNC5(sc)) < 0)
		return error;

	if ((error = FUNC2(&sc->stamp, sc->path)) <= 0)
		goto unlock;

	if ((fd = FUNC3(sc->path)) < 0) {
		error = fd;
		goto unlock;
	}

	if (FUNC8(fd, &st) < 0) {
		FUNC1(GIT_ERROR_OS, "failed to stat file");
		error = -1;
		(void)FUNC7(fd);
		goto unlock;
	}

	if (!FUNC0(st.st_size)) {
		FUNC1(GIT_ERROR_INVALID, "unable to load file larger than size_t");
		error = -1;
		(void)FUNC7(fd);
		goto unlock;
	}

	if (buf)
		error = FUNC4(buf, fd, (size_t)st.st_size);

	(void)FUNC7(fd);

	if (error < 0)
		goto unlock;

	return 1; /* return 1 -> file needs reload and was successfully loaded */

unlock:
	FUNC6(sc);
	return error;
}