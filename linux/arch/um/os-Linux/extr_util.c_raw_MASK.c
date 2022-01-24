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
struct termios {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TCSADRAIN ; 
 int /*<<< orphan*/  FUNC1 (struct termios*) ; 
 int errno ; 
 int FUNC2 (int,struct termios*) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,struct termios*) ; 

int FUNC4(int fd)
{
	struct termios tt;
	int err;

	FUNC0(err = FUNC2(fd, &tt));
	if (err < 0)
		return -errno;

	FUNC1(&tt);

	FUNC0(err = FUNC3(fd, TCSADRAIN, &tt));
	if (err < 0)
		return -errno;

	/*
	 * XXX tcsetattr could have applied only some changes
	 * (and cfmakeraw() is a set of changes)
	 */
	return 0;
}