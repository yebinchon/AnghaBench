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
 short BEV_EVENT_ERROR ; 
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  FUNC0 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(struct bufferevent *bev, short events, void *ctx)
{
	if (events & BEV_EVENT_CONNECTED) {
		unsigned char tmp = 'A';
		FUNC1(bev, &tmp, 1);
	} else if (events & BEV_EVENT_ERROR) {
		FUNC3("Client socket got error!");
		FUNC2(2);
	}

	FUNC0(bev, EV_READ);
}