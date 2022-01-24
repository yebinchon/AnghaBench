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
struct evbuffer_cb_info {scalar_t__ n_added; scalar_t__ n_deleted; } ;
struct evbuffer {int dummy; } ;
struct bufferevent_pair {struct bufferevent_pair* partner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct bufferevent_pair*,struct bufferevent_pair*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent_pair*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct evbuffer *outbuf,
    const struct evbuffer_cb_info *info, void *arg)
{
	struct bufferevent_pair *bev_pair = arg;
	struct bufferevent_pair *partner = bev_pair->partner;

	FUNC4(FUNC3(bev_pair));

	if (info->n_added > info->n_deleted && partner) {
		/* We got more data.  If the other side's reading, then
		   hand it over. */
		if (FUNC1(bev_pair, partner)) {
			FUNC0(FUNC3(bev_pair), FUNC3(partner), 0);
		}
	}

	FUNC2(FUNC3(bev_pair));
}