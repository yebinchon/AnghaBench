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
typedef  int /*<<< orphan*/  mode_t ;
struct TYPE_6__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 

__attribute__((used)) static int FUNC10(
	const char *git_dir,
	bool allow_overwrite,
	const char *file,
	mode_t mode,
	bool hidden,
	const char *content)
{
	git_buf path = GIT_BUF_INIT;
	int fd, error = 0, flags;

	if (FUNC3(&path, git_dir, file) < 0)
		return -1;

	if (allow_overwrite)
		flags = O_WRONLY | O_CREAT | O_TRUNC;
	else
		flags = O_WRONLY | O_CREAT | O_EXCL;

	fd = FUNC7(FUNC1(&path), flags, mode);

	if (fd >= 0) {
		error = FUNC8(fd, content, FUNC9(content));

		FUNC6(fd);
	}
	else if (errno != EEXIST)
		error = fd;

#ifdef GIT_WIN32
	if (!error && hidden) {
		if (git_win32__set_hidden(path.ptr, true) < 0)
			error = -1;
	}
#else
	FUNC0(hidden);
#endif

	FUNC2(&path);

	if (error)
		FUNC4(GIT_ERROR_OS,
			"failed to initialize repository with template '%s'", file);

	return error;
}