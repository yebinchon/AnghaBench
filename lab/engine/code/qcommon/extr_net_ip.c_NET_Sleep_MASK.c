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
struct timeval {int tv_sec; int tv_usec; } ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  scalar_t__ SOCKET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ INVALID_SOCKET ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int SOCKET_ERROR ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ ip6_socket ; 
 scalar_t__ ip_socket ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 

void FUNC7(int msec)
{
	struct timeval timeout;
	fd_set fdr;
	int retval;
	SOCKET highestfd = INVALID_SOCKET;

	if(msec < 0)
		msec = 0;

	FUNC2(&fdr);

	if(ip_socket != INVALID_SOCKET)
	{
		FUNC1(ip_socket, &fdr);

		highestfd = ip_socket;
	}
	if(ip6_socket != INVALID_SOCKET)
	{
		FUNC1(ip6_socket, &fdr);

		if(highestfd == INVALID_SOCKET || ip6_socket > highestfd)
			highestfd = ip6_socket;
	}

#ifdef _WIN32
	if(highestfd == INVALID_SOCKET)
	{
		// windows ain't happy when select is called without valid FDs
		SleepEx(msec, 0);
		return;
	}
#endif

	timeout.tv_sec = msec/1000;
	timeout.tv_usec = (msec%1000)*1000;

	retval = FUNC6(highestfd + 1, &fdr, NULL, NULL, &timeout);

	if(retval == SOCKET_ERROR)
		FUNC0("Warning: select() syscall failed: %s\n", FUNC3());
	else if(retval > 0)
		FUNC4(&fdr);
}