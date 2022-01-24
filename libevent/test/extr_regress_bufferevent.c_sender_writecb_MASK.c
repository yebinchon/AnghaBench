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
 int EV_READ ; 
 int EV_WRITE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent*) ; 
 scalar_t__ FUNC4 (struct bufferevent*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct bufferevent *bev, void *ctx)
{
	if (FUNC5(FUNC3(bev)) == 0) {
		FUNC1(bev,EV_READ|EV_WRITE);
		FUNC0(("Flushed %d: freeing it.", (int)FUNC4(bev)));
		FUNC2(bev);
	}
}