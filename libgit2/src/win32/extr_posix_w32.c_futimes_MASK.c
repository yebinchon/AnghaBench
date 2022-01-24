#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct p_timeval {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  SYSTEMTIME ;
typedef  scalar_t__ HANDLE ;
typedef  TYPE_1__ FILETIME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct p_timeval const) ; 

int FUNC5(int fd, const struct p_timeval times[2])
{
	HANDLE handle;
	FILETIME atime = { 0 }, mtime = { 0 };

	if (times == NULL) {
		SYSTEMTIME st;

		FUNC0(&st);
		FUNC2(&st, &atime);
		FUNC2(&st, &mtime);
	}
	else {
		FUNC4(&atime, times[0]);
		FUNC4(&mtime, times[1]);
	}

	if ((handle = (HANDLE)FUNC3(fd)) == INVALID_HANDLE_VALUE)
		return -1;

	if (FUNC1(handle, NULL, &atime, &mtime) == 0)
		return -1;

	return 0;
}