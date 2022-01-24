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
struct bufferevent_private {int /*<<< orphan*/  refcnt; } ;
struct bufferevent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 struct bufferevent_private* FUNC2 (struct bufferevent*) ; 

void
FUNC3(struct bufferevent *bufev)
{
	struct bufferevent_private *bufev_private = FUNC2(bufev);

	/* XXX: now that this function is public, we might want to
	 * - return the count from this function
	 * - create a new function to atomically grab the current refcount
	 */
	FUNC0(bufev);
	++bufev_private->refcnt;
	FUNC1(bufev);
}