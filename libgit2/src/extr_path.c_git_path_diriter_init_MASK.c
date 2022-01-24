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
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ size; int /*<<< orphan*/  ptr; } ;
struct TYPE_7__ {scalar_t__ parent_len; unsigned int flags; TYPE_3__ path; int /*<<< orphan*/  ic; int /*<<< orphan*/ * dir; } ;
typedef  TYPE_1__ git_path_diriter ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_FILESYSTEM ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 unsigned int GIT_PATH_DIR_PRECOMPOSE_UNICODE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(
	git_path_diriter *diriter,
	const char *path,
	unsigned int flags)
{
	FUNC0(diriter && path);

	FUNC6(diriter, 0, sizeof(git_path_diriter));

	if (FUNC2(&diriter->path, path) < 0)
		return -1;

	FUNC5(&diriter->path);

	if (diriter->path.size == 0) {
		FUNC3(GIT_ERROR_FILESYSTEM, "could not open directory '%s'", path);
		return -1;
	}

	if ((diriter->dir = FUNC7(diriter->path.ptr)) == NULL) {
		FUNC1(&diriter->path);

		FUNC3(GIT_ERROR_OS, "failed to open directory '%s'", path);
		return -1;
	}

#ifdef GIT_USE_ICONV
	if ((flags & GIT_PATH_DIR_PRECOMPOSE_UNICODE) != 0)
		(void)git_path_iconv_init_precompose(&diriter->ic);
#endif

	diriter->parent_len = diriter->path.size;
	diriter->flags = flags;

	return 0;
}