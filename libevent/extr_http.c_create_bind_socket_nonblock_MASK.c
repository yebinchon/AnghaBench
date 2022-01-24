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
struct evutil_addrinfo {scalar_t__ ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_family; } ;
typedef  int /*<<< orphan*/  on ;
typedef  int evutil_socket_t ;
typedef  int /*<<< orphan*/  ev_socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int EVUTIL_SOCK_CLOEXEC ; 
 int EVUTIL_SOCK_NONBLOCK ; 
 int SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_KEEPALIVE ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 

__attribute__((used)) static evutil_socket_t
FUNC8(struct evutil_addrinfo *ai, int reuse)
{
	evutil_socket_t fd;

	int on = 1, r;
	int serrno;

	/* Create listen socket */
	fd = FUNC6(ai ? ai->ai_family : AF_INET,
	    SOCK_STREAM|EVUTIL_SOCK_NONBLOCK|EVUTIL_SOCK_CLOEXEC, 0);
	if (fd == -1) {
			FUNC3(-1, "socket");
			return (-1);
	}

	if (FUNC7(fd, SOL_SOCKET, SO_KEEPALIVE, (void *)&on, sizeof(on))<0)
		goto out;
	if (reuse) {
		if (FUNC5(fd) < 0)
			goto out;
	}

	if (ai != NULL) {
		r = FUNC2(fd, ai->ai_addr, (ev_socklen_t)ai->ai_addrlen);
		if (r == -1)
			goto out;
	}

	return (fd);

 out:
	serrno = FUNC1();
	FUNC4(fd);
	FUNC0(serrno);
	return (-1);
}