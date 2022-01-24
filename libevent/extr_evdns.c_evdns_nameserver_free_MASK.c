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
struct nameserver {scalar_t__ socket; scalar_t__ state; int /*<<< orphan*/  timeout_event; int /*<<< orphan*/ * probe_request; int /*<<< orphan*/  base; int /*<<< orphan*/  event; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct nameserver*) ; 

__attribute__((used)) static void
FUNC5(struct nameserver *server)
{
	if (server->socket >= 0)
		FUNC3(server->socket);
	(void) FUNC2(&server->event);
	FUNC1(&server->event);
	if (server->state == 0)
		(void) FUNC2(&server->timeout_event);
	if (server->probe_request) {
		FUNC0(server->base, server->probe_request);
		server->probe_request = NULL;
	}
	FUNC1(&server->timeout_event);
	FUNC4(server);
}