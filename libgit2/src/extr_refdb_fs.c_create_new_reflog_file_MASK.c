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
 int /*<<< orphan*/  GIT_REFLOG_DIR_MODE ; 
 int /*<<< orphan*/  GIT_REFLOG_FILE_MODE ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int FUNC2 (char const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const char *filepath)
{
	int fd, error;

	if ((error = FUNC0(filepath, GIT_REFLOG_DIR_MODE)) < 0)
		return error;

	if ((fd = FUNC2(filepath,
			O_WRONLY | O_CREAT,
			GIT_REFLOG_FILE_MODE)) < 0)
		return -1;

	return FUNC1(fd);
}