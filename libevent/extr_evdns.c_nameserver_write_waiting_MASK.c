#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int dummy; } ;
struct nameserver {char write_waiting; int /*<<< orphan*/  address; int /*<<< orphan*/  event; int /*<<< orphan*/  socket; TYPE_1__* base; } ;
typedef  int /*<<< orphan*/  addrbuf ;
struct TYPE_2__ {int /*<<< orphan*/  event_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  EVDNS_LOG_WARN ; 
 int EV_PERSIST ; 
 int EV_READ ; 
 int EV_WRITE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct nameserver*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nameserver_ready_callback ; 

__attribute__((used)) static void
FUNC6(struct nameserver *ns, char waiting) {
	FUNC0(ns->base);
	if (ns->write_waiting == waiting) return;

	ns->write_waiting = waiting;
	(void) FUNC3(&ns->event);
	FUNC2(&ns->event, ns->base->event_base,
	    ns->socket, EV_READ | (waiting ? EV_WRITE : 0) | EV_PERSIST,
	    nameserver_ready_callback, ns);
	if (FUNC1(&ns->event, NULL) < 0) {
		char addrbuf[128];
		FUNC5(EVDNS_LOG_WARN, "Error from libevent when adding event for %s",
		    FUNC4(
			    (struct sockaddr *)&ns->address,
			    addrbuf, sizeof(addrbuf)));
		/* ???? Do more? */
	}
}