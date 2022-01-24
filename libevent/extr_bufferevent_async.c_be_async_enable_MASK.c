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
struct TYPE_2__ {scalar_t__ connecting; } ;
struct bufferevent_async {TYPE_1__ bev; int /*<<< orphan*/  ok; } ;
struct bufferevent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 short EV_READ ; 
 short EV_WRITE ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent_async*) ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent_async*) ; 
 struct bufferevent_async* FUNC4 (struct bufferevent*) ; 

__attribute__((used)) static int
FUNC5(struct bufferevent *buf, short what)
{
	struct bufferevent_async *bev_async = FUNC4(buf);

	if (!bev_async->ok)
		return -1;

	if (bev_async->bev.connecting) {
		/* Don't launch anything during connection attempts. */
		return 0;
	}

	if (what & EV_READ)
		FUNC0(buf);
	if (what & EV_WRITE)
		FUNC1(buf);

	/* If we newly enable reading or writing, and we aren't reading or
	   writing already, consider launching a new read or write. */

	if (what & EV_READ)
		FUNC2(bev_async);
	if (what & EV_WRITE)
		FUNC3(bev_async);
	return 0;
}