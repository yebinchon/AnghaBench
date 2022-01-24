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
struct evbuffer_cb_info {scalar_t__ n_added; } ;
struct evbuffer {int dummy; } ;
struct bufferevent_async {int dummy; } ;
struct bufferevent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent_async*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent*) ; 
 struct bufferevent_async* FUNC3 (struct bufferevent*) ; 

__attribute__((used)) static void
FUNC4(struct evbuffer *buf,
    const struct evbuffer_cb_info *cbinfo,
    void *arg)
{
	struct bufferevent *bev = arg;
	struct bufferevent_async *bev_async = FUNC3(bev);

	/* If we added data to the outbuf and were not writing before,
	 * we may want to write now. */

	FUNC2(bev);

	if (cbinfo->n_added)
		FUNC0(bev_async);

	FUNC1(bev);
}