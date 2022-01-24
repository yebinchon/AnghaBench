#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct dirent {char* d_name; } ;
struct TYPE_9__ {char* ptr; } ;
struct TYPE_8__ {int flags; int parent_len; TYPE_3__ path; int /*<<< orphan*/  ic; int /*<<< orphan*/  dir; } ;
typedef  TYPE_1__ git_path_diriter ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int GIT_ITEROVER ; 
 int GIT_PATH_DIR_INCLUDE_DOT_AND_DOTDOT ; 
 int GIT_PATH_DIR_PRECOMPOSE_UNICODE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,char const**,size_t*) ; 
 scalar_t__ FUNC7 (char*) ; 
 struct dirent* FUNC8 (int /*<<< orphan*/ ) ; 
 size_t FUNC9 (char const*) ; 

int FUNC10(git_path_diriter *diriter)
{
	struct dirent *de;
	const char *filename;
	size_t filename_len;
	bool skip_dot = !(diriter->flags & GIT_PATH_DIR_INCLUDE_DOT_AND_DOTDOT);
	int error = 0;

	FUNC0(diriter);

	errno = 0;

	do {
		if ((de = FUNC8(diriter->dir)) == NULL) {
			if (!errno)
				return GIT_ITEROVER;

			FUNC5(GIT_ERROR_OS,
				"could not read directory '%s'", diriter->path.ptr);
			return -1;
		}
	} while (skip_dot && FUNC7(de->d_name));

	filename = de->d_name;
	filename_len = FUNC9(filename);

#ifdef GIT_USE_ICONV
	if ((diriter->flags & GIT_PATH_DIR_PRECOMPOSE_UNICODE) != 0 &&
		(error = git_path_iconv(&diriter->ic, &filename, &filename_len)) < 0)
		return error;
#endif

	FUNC4(&diriter->path, diriter->parent_len);

	if (diriter->parent_len > 0 &&
		diriter->path.ptr[diriter->parent_len-1] != '/')
		FUNC3(&diriter->path, '/');

	FUNC2(&diriter->path, filename, filename_len);

	if (FUNC1(&diriter->path))
		return -1;

	return error;
}