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
 short BEV_EVENT_EOF ; 
 short BEV_EVENT_ERROR ; 
 scalar_t__ MAX_REQUESTS ; 
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ num_requests ; 

__attribute__((used)) static void
FUNC5(struct bufferevent *bev, short events, void *ctx)
{
	if (events & BEV_EVENT_ERROR) {
		FUNC4("Error from bufferevent");
		FUNC3(1);
	} else if (events & BEV_EVENT_EOF) {
		FUNC0(bev);
		if (num_requests == MAX_REQUESTS) {
			FUNC2(FUNC1(bev));
		}
	}
}