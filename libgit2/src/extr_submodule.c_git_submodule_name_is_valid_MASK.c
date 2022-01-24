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
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_6__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int GIT_PATH_REJECT_FILESYSTEM_DEFAULTS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

int FUNC6(git_repository *repo, const char *name, int flags)
{
	git_buf buf = GIT_BUF_INIT;
	int error, isvalid;

	if (flags == 0)
		flags = GIT_PATH_REJECT_FILESYSTEM_DEFAULTS;

	/* Avoid allocating a new string if we can avoid it */
	if (FUNC4(name, '\\') != NULL) {
		if ((error = FUNC3(&buf, name)) < 0)
			return error;
	} else {
		FUNC0(&buf, name, FUNC5(name));
	}

	isvalid =  FUNC2(repo, buf.ptr, 0, flags);
	FUNC1(&buf);

	return isvalid;
}