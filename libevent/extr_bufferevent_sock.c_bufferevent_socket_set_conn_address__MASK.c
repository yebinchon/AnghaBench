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
struct sockaddr {int dummy; } ;
struct bufferevent_private {int /*<<< orphan*/  conn_address; } ;
struct bufferevent {int dummy; } ;

/* Variables and functions */
 struct bufferevent_private* FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sockaddr*,size_t) ; 

void
FUNC3(struct bufferevent *bev,
	struct sockaddr *addr, size_t addrlen)
{
	struct bufferevent_private *bev_p = FUNC0(bev);
	FUNC1(addrlen <= sizeof(bev_p->conn_address));
	FUNC2(&bev_p->conn_address, addr, addrlen);
}