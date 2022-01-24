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
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 (int,char const*,size_t) ; 
 int FUNC4 (char const*,int,int) ; 

void FUNC5(const char *path, const char *buf, size_t len)
{
	int fd = FUNC4(path, O_WRONLY | O_CREAT | O_TRUNC, 0666);
	if (FUNC3(fd, buf, len) < 0)
		FUNC2(FUNC0("could not write to '%s'"), path);
	if (FUNC1(fd))
		FUNC2(FUNC0("could not close '%s'"), path);
}