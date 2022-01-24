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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,int*) ; 
 char* FUNC2 (char*,char const*) ; 

int FUNC3(const char *path, int *return_error_code)
{
	int ret = 0;
	char *gitdir = FUNC2("%s/.git", path);

	if (FUNC1(gitdir, return_error_code))
		ret = 1;

	FUNC0(gitdir);
	return ret;
}