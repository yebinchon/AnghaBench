#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int GIT_EEXISTS ; 
 int /*<<< orphan*/  GIT_ERROR_CHECKOUT ; 
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 size_t FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,char*,int) ; 
 int FUNC3 (TYPE_1__*,char) ; 
 int FUNC4 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(git_buf *path, const char *suffix)
{
	size_t path_len;
	int i = 0, error = 0;

	if ((error = FUNC3(path, '~')) < 0 || (error = FUNC4(path, suffix)) < 0)
		return -1;

	path_len = FUNC1(path);

	while (FUNC7(FUNC0(path)) && i < INT_MAX) {
		FUNC5(path, path_len);

		if ((error = FUNC3(path, '_')) < 0 ||
			(error = FUNC2(path, "%d", i)) < 0)
			return error;

		i++;
	}

	if (i == INT_MAX) {
		FUNC5(path, path_len);

		FUNC6(GIT_ERROR_CHECKOUT, "could not write '%s': working directory file exists", path->ptr);
		return GIT_EEXISTS;
	}

	return 0;
}