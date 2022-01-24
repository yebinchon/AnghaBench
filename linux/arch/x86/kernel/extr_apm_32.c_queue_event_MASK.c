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
struct apm_user {scalar_t__ event_head; scalar_t__ event_tail; int* events; int /*<<< orphan*/  standbys_pending; int /*<<< orphan*/  suspends_pending; int /*<<< orphan*/  writer; int /*<<< orphan*/  suser; int /*<<< orphan*/  reader; struct apm_user* next; } ;
typedef  int apm_event_t ;

/* Variables and functions */
 scalar_t__ APM_MAX_EVENTS ; 
#define  APM_SYS_STANDBY 131 
#define  APM_SYS_SUSPEND 130 
#define  APM_USER_STANDBY 129 
#define  APM_USER_SUSPEND 128 
 int /*<<< orphan*/  apm_waitqueue ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  standbys_pending ; 
 int /*<<< orphan*/  suspends_pending ; 
 struct apm_user* user_list ; 
 int /*<<< orphan*/  user_list_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(apm_event_t event, struct apm_user *sender)
{
	struct apm_user *as;

	FUNC1(&user_list_lock);
	if (user_list == NULL)
		goto out;
	for (as = user_list; as != NULL; as = as->next) {
		if ((as == sender) || (!as->reader))
			continue;
		if (++as->event_head >= APM_MAX_EVENTS)
			as->event_head = 0;

		if (as->event_head == as->event_tail) {
			static int notified;

			if (notified++ == 0)
				FUNC0("an event queue overflowed\n");
			if (++as->event_tail >= APM_MAX_EVENTS)
				as->event_tail = 0;
		}
		as->events[as->event_head] = event;
		if (!as->suser || !as->writer)
			continue;
		switch (event) {
		case APM_SYS_SUSPEND:
		case APM_USER_SUSPEND:
			as->suspends_pending++;
			suspends_pending++;
			break;

		case APM_SYS_STANDBY:
		case APM_USER_STANDBY:
			as->standbys_pending++;
			standbys_pending++;
			break;
		}
	}
	FUNC3(&apm_waitqueue);
out:
	FUNC2(&user_list_lock);
}