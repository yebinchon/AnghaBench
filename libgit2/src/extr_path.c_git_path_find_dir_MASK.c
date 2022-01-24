#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int GIT_PATH_MAX ; 
 int FUNC0 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,char const*,char const*,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*) ; 

int FUNC5(git_buf *dir, const char *path, const char *base)
{
	int error = FUNC2(dir, path, base, NULL);

	if (!error) {
		char buf[GIT_PATH_MAX];
		if (FUNC4(dir->ptr, buf) != NULL)
			error = FUNC0(dir, buf);
	}

	/* call dirname if this is not a directory */
	if (!error) /* && git_path_isdir(dir->ptr) == false) */
		error = (FUNC1(dir, dir->ptr) < 0) ? -1 : 0;

	if (!error)
		error = FUNC3(dir);

	return error;
}