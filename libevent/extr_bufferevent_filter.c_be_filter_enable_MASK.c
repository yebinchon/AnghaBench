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
struct bufferevent_filtered {int /*<<< orphan*/  underlying; } ;
struct bufferevent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 int /*<<< orphan*/  BEV_SUSPEND_FILT_READ ; 
 short EV_READ ; 
 short EV_WRITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bufferevent_filtered* FUNC3 (struct bufferevent*) ; 

__attribute__((used)) static int
FUNC4(struct bufferevent *bev, short event)
{
	struct bufferevent_filtered *bevf = FUNC3(bev);
	if (event & EV_WRITE)
		FUNC1(bev);

	if (event & EV_READ) {
		FUNC0(bev);
		FUNC2(bevf->underlying,
		    BEV_SUSPEND_FILT_READ);
	}
	return 0;
}