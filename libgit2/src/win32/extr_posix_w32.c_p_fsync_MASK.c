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
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  EBADF ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EIO ; 
 scalar_t__ ERROR_INVALID_HANDLE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  p_fsync__cnt ; 

int FUNC3(int fd)
{
	HANDLE fh = (HANDLE)FUNC2(fd);

	p_fsync__cnt++;

	if (fh == INVALID_HANDLE_VALUE) {
		errno = EBADF;
		return -1;
	}

	if (!FUNC0(fh)) {
		DWORD code = FUNC1();

		if (code == ERROR_INVALID_HANDLE)
			errno = EINVAL;
		else
			errno = EIO;

		return -1;
	}

	return 0;
}