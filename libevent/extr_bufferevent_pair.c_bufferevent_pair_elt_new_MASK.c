#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct event_base {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  output; } ;
struct TYPE_4__ {TYPE_1__ bev; } ;
struct bufferevent_pair {TYPE_2__ bev; } ;

/* Variables and functions */
 int /*<<< orphan*/  be_pair_outbuf_cb ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*,struct event_base*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  bufferevent_ops_pair ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent_pair*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bufferevent_pair*) ; 
 struct bufferevent_pair* FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bufferevent_pair*) ; 

__attribute__((used)) static struct bufferevent_pair *
FUNC7(struct event_base *base,
    int options)
{
	struct bufferevent_pair *bufev;
	if (! (bufev = FUNC5(1, sizeof(struct bufferevent_pair))))
		return NULL;
	if (FUNC1(&bufev->bev, base, &bufferevent_ops_pair,
		options)) {
		FUNC6(bufev);
		return NULL;
	}
	if (!FUNC4(bufev->bev.bev.output, be_pair_outbuf_cb, bufev)) {
		FUNC0(FUNC3(bufev));
		return NULL;
	}

	FUNC2(&bufev->bev.bev);

	return bufev;
}