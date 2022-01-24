#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_family; TYPE_1__ sin_addr; scalar_t__ sin_port; } ;
struct sockaddr {int dummy; } ;
typedef  scalar_t__ evutil_socket_t ;
typedef  int ev_socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC0 (scalar_t__,struct sockaddr*,int) ; 
 scalar_t__ FUNC1 (scalar_t__,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static evutil_socket_t
FUNC6(struct sockaddr_in *localhost)
{
	struct sockaddr *sa = (struct sockaddr *)localhost;
	evutil_socket_t fd = -1;
	ev_socklen_t slen = sizeof(*localhost);

	FUNC3(localhost, 0, sizeof(*localhost));
	localhost->sin_port = 0; /* have the kernel pick a port */
	localhost->sin_addr.s_addr = FUNC2(0x7f000001L);
	localhost->sin_family = AF_INET;

	/* bind, but don't listen or accept. should trigger
	   "Connection refused" reliably on most platforms. */
	fd = FUNC4(localhost->sin_family, SOCK_STREAM, 0);
	FUNC5(fd >= 0);
	FUNC5(FUNC0(fd, sa, slen) == 0);
	FUNC5(FUNC1(fd, sa, &slen) == 0);

	return fd;

end:
	return -1;
}