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
struct bufferevent_private {int dns_error; } ;
struct bufferevent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 struct bufferevent_private* FUNC2 (struct bufferevent*) ; 

int
FUNC3(struct bufferevent *bev)
{
	int rv;
	struct bufferevent_private *bev_p = FUNC2(bev);

	FUNC0(bev);
	rv = bev_p->dns_error;
	FUNC1(bev);

	return rv;
}