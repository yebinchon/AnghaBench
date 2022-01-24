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
struct nameserver {int /*<<< orphan*/  base; int /*<<< orphan*/ * probe_request; } ;

/* Variables and functions */
 int DNS_ERR_CANCEL ; 
 int DNS_ERR_NONE ; 
 int DNS_ERR_NOTEXIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nameserver* const) ; 
 int /*<<< orphan*/  FUNC3 (struct nameserver* const) ; 

__attribute__((used)) static void
FUNC4(int result, char type, int count, int ttl, void *addresses, void *arg) {
	struct nameserver *const ns = (struct nameserver *) arg;
	(void) type;
	(void) count;
	(void) ttl;
	(void) addresses;

	if (result == DNS_ERR_CANCEL) {
		/* We canceled this request because the nameserver came up
		 * for some other reason.  Do not change our opinion about
		 * the nameserver. */
		return;
	}

	FUNC0(ns->base);
	ns->probe_request = NULL;
	if (result == DNS_ERR_NONE || result == DNS_ERR_NOTEXIST) {
		/* this is a good reply */
		FUNC3(ns);
	} else {
		FUNC2(ns);
	}
	FUNC1(ns->base);
}