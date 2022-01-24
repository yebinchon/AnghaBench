#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct stat {scalar_t__ st_size; int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int git_file ;
struct TYPE_8__ {int /*<<< orphan*/  size; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int,size_t) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 scalar_t__ FUNC13 (char const*,struct stat*) ; 

int FUNC14(
	git_buf *out, const char *path, git_oid *checksum, int *updated)
{
	int error;
	git_file fd;
	struct stat st;
	git_buf buf = GIT_BUF_INIT;
	git_oid checksum_new;

	FUNC1(out && path && *path);

	if (updated != NULL)
		*updated = 0;

	if (FUNC13(path, &st) < 0)
		return FUNC11(errno, path, "stat");


	if (FUNC0(st.st_mode)) {
		FUNC5(GIT_ERROR_INVALID, "requested file is a directory");
		return GIT_ENOTFOUND;
	}

	if (!FUNC2(st.st_size+1)) {
		FUNC5(GIT_ERROR_OS, "invalid regular file stat for '%s'", path);
		return -1;
	}

	if ((fd = FUNC6(path)) < 0)
		return fd;

	if (FUNC7(&buf, fd, (size_t)st.st_size) < 0) {
		FUNC12(fd);
		return -1;
	}

	FUNC12(fd);

	if (checksum) {
		if ((error = FUNC8(&checksum_new, buf.ptr, buf.size)) < 0) {
			FUNC3(&buf);
			return error;
		}

		/*
		 * If we were given a checksum, we only want to use it if it's different
		 */
		if (!FUNC9(checksum, &checksum_new)) {
			FUNC3(&buf);
			if (updated)
				*updated = 0;

			return 0;
		}

		FUNC10(checksum, &checksum_new);
	}

	/*
	 * If we're here, the file did change, or the user didn't have an old version
	 */
	if (updated != NULL)
		*updated = 1;

	FUNC4(out, &buf);
	FUNC3(&buf);

	return 0;
}