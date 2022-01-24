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
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 short EV_READ ; 
 short EV_WRITE ; 

__attribute__((used)) static int
FUNC2(struct bufferevent *bev, short events)
{
	if (events & EV_READ) {
		FUNC0(bev);
	}
	if (events & EV_WRITE) {
		FUNC1(bev);
	}
	return 0;
}