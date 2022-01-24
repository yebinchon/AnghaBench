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
struct evbuffer {int dummy; } ;
struct bufferevent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  FUNC0 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 struct evbuffer* FUNC1 (struct bufferevent*) ; 
 int FUNC2 (struct evbuffer*) ; 

__attribute__((used)) static void
FUNC3(struct bufferevent *bev, void *ctx)
{
	struct evbuffer *output = FUNC1(bev);
	if (FUNC2(output) < 512000)
		FUNC0(bev, EV_READ);
}