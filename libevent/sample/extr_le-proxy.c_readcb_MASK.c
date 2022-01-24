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
 int /*<<< orphan*/  EV_WRITE ; 
 int MAX_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 struct evbuffer* FUNC1 (struct bufferevent*) ; 
 struct evbuffer* FUNC2 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent*,void (*) (struct bufferevent*,void*),int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC4 (struct bufferevent*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  drained_writecb ; 
 int /*<<< orphan*/  FUNC5 (struct evbuffer*,struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC6 (struct evbuffer*,size_t) ; 
 int FUNC7 (struct evbuffer*) ; 
 int /*<<< orphan*/  eventcb ; 

__attribute__((used)) static void
FUNC8(struct bufferevent *bev, void *ctx)
{
	struct bufferevent *partner = ctx;
	struct evbuffer *src, *dst;
	size_t len;
	src = FUNC1(bev);
	len = FUNC7(src);
	if (!partner) {
		FUNC6(src, len);
		return;
	}
	dst = FUNC2(partner);
	FUNC5(dst, src);

	if (FUNC7(dst) >= MAX_OUTPUT) {
		/* We're giving the other side data faster than it can
		 * pass it on.  Stop reading here until we have drained the
		 * other side to MAX_OUTPUT/2 bytes. */
		FUNC3(partner, readcb, drained_writecb,
		    eventcb, bev);
		FUNC4(partner, EV_WRITE, MAX_OUTPUT/2,
		    MAX_OUTPUT);
		FUNC0(bev, EV_READ);
	}
}