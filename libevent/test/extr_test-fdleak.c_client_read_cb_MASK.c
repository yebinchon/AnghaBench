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
struct event_base {int dummy; } ;
struct bufferevent {int dummy; } ;

/* Variables and functions */
 scalar_t__ MAX_REQUESTS ; 
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 struct event_base* FUNC1 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ num_requests ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct event_base*) ; 

__attribute__((used)) static void
FUNC6(struct bufferevent *bev, void *ctx)
{
	unsigned char tmp;
	struct event_base *base = FUNC1(bev);

	FUNC2(bev, &tmp, 1);
	if (tmp != 'A') {
		FUNC4("Incorrect data received!");
		FUNC3(2);
	}
	FUNC0(bev);

	num_requests++;
	if (++num_requests < MAX_REQUESTS) {
		FUNC5(base);
	}
}