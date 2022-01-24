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
 int O_CLOEXEC ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,char*) ; 
 int FUNC2 (char const*,int,int) ; 

int FUNC3(const char *path, int mode)
{
	int fd = FUNC2(path, O_WRONLY | O_CREAT | O_TRUNC | O_CLOEXEC, mode);
	if (fd < 0)
		return FUNC1(errno, path, "open");

	FUNC0(fd);
	return 0;
}