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
struct remote_lock {struct remote_lock* next; } ;
struct TYPE_2__ {struct remote_lock* locks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* repo ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC1 (struct remote_lock*) ; 

__attribute__((used)) static void FUNC2(void)
{
	struct remote_lock *lock = repo->locks;

	FUNC0(stderr, "Removing remote locks...\n");
	while (lock) {
		struct remote_lock *next = lock->next;
		FUNC1(lock);
		lock = next;
	}
}