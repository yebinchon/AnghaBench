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
struct bufferevent {int dummy; } ;

/* Variables and functions */
 short BEV_EVENT_CONNECTED ; 
 int EV_READ ; 
 int EV_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct bufferevent*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*,void*) ; 

__attribute__((used)) static void
FUNC2(struct bufferevent *bev, short what, void *ctx)
{
	if (what & BEV_EVENT_CONNECTED) {
		FUNC1(bev, ctx);
		/* XXXX this shouldn't be needed. */
		FUNC0(bev, EV_READ|EV_WRITE);
	}
}