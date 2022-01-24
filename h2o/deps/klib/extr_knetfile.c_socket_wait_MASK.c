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
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int SOCKET_ERROR ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct timeval*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC6(int fd, int is_read)
{
	fd_set fds, *fdr = 0, *fdw = 0;
	struct timeval tv;
	int ret;
	tv.tv_sec = 5; tv.tv_usec = 0; // 5 seconds time out
	FUNC1(&fds);
	FUNC0(fd, &fds);
	if (is_read) fdr = &fds;
	else fdw = &fds;
	ret = FUNC5(fd+1, fdr, fdw, 0, &tv);
#ifndef _WIN32
	if (ret == -1) FUNC4("select");
#else
	if (ret == 0)
		fprintf(stderr, "select time-out\n");
	else if (ret == SOCKET_ERROR)
		fprintf(stderr, "select: %d\n", WSAGetLastError());
#endif
	return ret;
}