#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_mode; } ;
struct TYPE_4__ {int /*<<< orphan*/  ptr; int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 scalar_t__ ENOTDIR ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct stat*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(git_buf *path, const char *ceiling)
{
	int error = GIT_ENOTFOUND;
	struct stat st;

	while (error == GIT_ENOTFOUND) {
		FUNC5(path, '/');

		if (!path->size || FUNC4(path->ptr, ceiling) != 0)
			error = 0;
		else if (FUNC6(path->ptr, &st) == 0) {
			if (FUNC2(st.st_mode) || FUNC1(st.st_mode))
				error = FUNC7(path->ptr);
			else if (!FUNC0(st.st_mode))
				error = -1; /* fail to remove non-regular file */
		} else if (errno != ENOTDIR)
			error = -1;
	}

	if (error)
		FUNC3(path->ptr, "cannot remove parent");

	return error;
}