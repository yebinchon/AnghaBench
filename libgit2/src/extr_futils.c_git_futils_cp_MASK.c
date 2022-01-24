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
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 int O_CREAT ; 
 int O_EXCL ; 
 int O_WRONLY ; 
 int FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (char const*,int,int /*<<< orphan*/ ) ; 

int FUNC5(const char *from, const char *to, mode_t filemode)
{
	int ifd, ofd;

	if ((ifd = FUNC1(from)) < 0)
		return ifd;

	if ((ofd = FUNC4(to, O_WRONLY | O_CREAT | O_EXCL, filemode)) < 0) {
		FUNC3(ifd);
		return FUNC2(errno, to, "open for writing");
	}

	return FUNC0(ifd, ofd, true);
}