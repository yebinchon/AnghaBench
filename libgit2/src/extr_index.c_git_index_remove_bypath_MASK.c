#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*) ; 

int FUNC4(git_index *index, const char *path)
{
	int ret;

	FUNC0(index && path);

	if (((ret = FUNC2(index, path, 0)) < 0 &&
		ret != GIT_ENOTFOUND) ||
		((ret = FUNC3(index, path)) < 0 &&
		ret != GIT_ENOTFOUND))
		return ret;

	if (ret == GIT_ENOTFOUND)
		FUNC1();

	return 0;
}