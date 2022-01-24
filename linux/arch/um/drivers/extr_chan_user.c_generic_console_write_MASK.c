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
struct termios {int /*<<< orphan*/  c_oflag; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  OPOST ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  TCSAFLUSH ; 
 int errno ; 
 int FUNC1 (int,char const*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int,struct termios*) ; 
 int FUNC7 (int,int /*<<< orphan*/ ,struct termios*) ; 

int FUNC8(int fd, const char *buf, int n)
{
	sigset_t old, no_sigio;
	struct termios save, new;
	int err;

	if (FUNC2(fd)) {
		FUNC4(&no_sigio);
		FUNC3(&no_sigio, SIGIO);
		if (FUNC5(SIG_BLOCK, &no_sigio, &old))
			goto error;

		FUNC0(err = FUNC6(fd, &save));
		if (err)
			goto error;
		new = save;
		/*
		 * The terminal becomes a bit less raw, to handle \n also as
		 * "Carriage Return", not only as "New Line". Otherwise, the new
		 * line won't start at the first column.
		 */
		new.c_oflag |= OPOST;
		FUNC0(err = FUNC7(fd, TCSAFLUSH, &new));
		if (err)
			goto error;
	}
	err = FUNC1(fd, buf, n, NULL);
	/*
	 * Restore raw mode, in any case; we *must* ignore any error apart
	 * EINTR, except for debug.
	 */
	if (FUNC2(fd)) {
		FUNC0(FUNC7(fd, TCSAFLUSH, &save));
		FUNC5(SIG_SETMASK, &old, NULL);
	}

	return err;
error:
	return -errno;
}