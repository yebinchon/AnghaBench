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
struct sockaddr {scalar_t__ sa_family; } ;
struct bufferevent_private {int /*<<< orphan*/  conn_address; } ;
struct bufferevent {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  evutil_socket_t ;

/* Variables and functions */
 scalar_t__ AF_UNSPEC ; 
 struct bufferevent_private* FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sockaddr*,int*) ; 

void
FUNC2(struct bufferevent *bev,
	evutil_socket_t fd)
{
	struct bufferevent_private *bev_p = FUNC0(bev);

	socklen_t len = sizeof(bev_p->conn_address);

	struct sockaddr *addr = (struct sockaddr *)&bev_p->conn_address;
	if (addr->sa_family != AF_UNSPEC)
		FUNC1(fd, addr, &len);
}