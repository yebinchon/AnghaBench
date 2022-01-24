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
struct agp_memory {struct agp_memory* prev; struct agp_memory* next; int /*<<< orphan*/  key; } ;
struct TYPE_4__ {TYPE_1__* current_controller; } ;
struct TYPE_3__ {struct agp_memory* pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct agp_memory*) ; 
 TYPE_2__ agp_fe ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct agp_memory *temp)
{
	struct agp_memory *prev;
	struct agp_memory *next;

	/* Check to see if this is even in the memory pool */

	FUNC0("mem=%p", temp);
	if (FUNC1(temp->key) != NULL) {
		next = temp->next;
		prev = temp->prev;

		if (prev != NULL) {
			prev->next = next;
			if (next != NULL)
				next->prev = prev;

		} else {
			/* This is the first item on the list */
			if (next != NULL)
				next->prev = NULL;

			agp_fe.current_controller->pool = next;
		}
	}
}