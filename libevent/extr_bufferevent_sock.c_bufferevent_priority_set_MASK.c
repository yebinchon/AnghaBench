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
struct bufferevent_private {int /*<<< orphan*/  deferred; } ;
struct bufferevent {int /*<<< orphan*/  ev_write; int /*<<< orphan*/  ev_read; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent*) ; 
 struct bufferevent_private* FUNC3 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 

int
FUNC6(struct bufferevent *bufev, int priority)
{
	int r = -1;
	struct bufferevent_private *bufev_p = FUNC3(bufev);

	FUNC1(bufev);
	if (!FUNC0(bufev))
		goto done;

	if (FUNC5(&bufev->ev_read, priority) == -1)
		goto done;
	if (FUNC5(&bufev->ev_write, priority) == -1)
		goto done;

	FUNC4(&bufev_p->deferred, priority);

	r = 0;
done:
	FUNC2(bufev);
	return r;
}