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
struct active_request_slot {struct active_request_slot* next; scalar_t__ in_use; } ;

/* Variables and functions */
 struct active_request_slot* active_queue_head ; 
 int /*<<< orphan*/  FUNC0 (struct active_request_slot*) ; 

void FUNC1(void)
{
	struct active_request_slot *slot = active_queue_head;

	while (slot != NULL)
		if (slot->in_use) {
			FUNC0(slot);
			slot = active_queue_head;
		} else {
			slot = slot->next;
		}
}