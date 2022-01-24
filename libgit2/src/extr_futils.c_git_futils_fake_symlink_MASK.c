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
 int GIT_ERROR ; 
 int FUNC0 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

int FUNC4(const char *old, const char *new)
{
	int retcode = GIT_ERROR;
	int fd = FUNC0(new, 0755, 0644);
	if (fd >= 0) {
		retcode = FUNC2(fd, old, FUNC3(old));
		FUNC1(fd);
	}
	return retcode;
}