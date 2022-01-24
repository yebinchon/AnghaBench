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
typedef  int time_t ;
struct remote_lock {int start_time; int timeout; char* url; struct remote_lock* next; int /*<<< orphan*/  refreshing; } ;
struct TYPE_2__ {struct remote_lock* locks; } ;

/* Variables and functions */
 int LOCK_REFRESH ; 
 int aborted ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct remote_lock*) ; 
 TYPE_1__* repo ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void)
{
	struct remote_lock *lock = repo->locks;
	time_t current_time = FUNC2(NULL);
	int time_remaining;

	while (lock) {
		time_remaining = lock->start_time + lock->timeout -
			current_time;
		if (!lock->refreshing && time_remaining < LOCK_REFRESH) {
			if (!FUNC1(lock)) {
				FUNC0(stderr,
					"Unable to refresh lock for %s\n",
					lock->url);
				aborted = 1;
				return;
			}
		}
		lock = lock->next;
	}
}