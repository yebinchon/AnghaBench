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
struct stat {int dummy; } ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  BY_HANDLE_FILE_INFORMATION ;

/* Variables and functions */
 int /*<<< orphan*/  EBADF ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (struct stat*,int /*<<< orphan*/ *) ; 

int FUNC3(int fd, struct stat *buf)
{
	BY_HANDLE_FILE_INFORMATION fhInfo;

	HANDLE fh = (HANDLE)FUNC1(fd);

	if (fh == INVALID_HANDLE_VALUE ||
		!FUNC0(fh, &fhInfo)) {
		errno = EBADF;
		return -1;
	}

	FUNC2(buf, &fhInfo);
	return 0;
}