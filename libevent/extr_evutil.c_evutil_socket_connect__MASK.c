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
struct sockaddr {int /*<<< orphan*/  sa_family; } ;
typedef  scalar_t__ evutil_socket_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC2 (scalar_t__,struct sockaddr const*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC7(evutil_socket_t *fd_ptr, const struct sockaddr *sa, int socklen)
{
	int made_fd = 0;

	if (*fd_ptr < 0) {
		if ((*fd_ptr = FUNC6(sa->sa_family, SOCK_STREAM, 0)) < 0)
			goto err;
		made_fd = 1;
		if (FUNC4(*fd_ptr) < 0) {
			goto err;
		}
	}

	if (FUNC2(*fd_ptr, sa, socklen) < 0) {
		int e = FUNC5(*fd_ptr);
		if (FUNC1(e))
			return 0;
		if (FUNC0(e))
			return 2;
		goto err;
	} else {
		return 1;
	}

err:
	if (made_fd) {
		FUNC3(*fd_ptr);
		*fd_ptr = -1;
	}
	return -1;
}