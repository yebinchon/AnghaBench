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
struct agp_controller {struct agp_controller* prev; struct agp_controller* next; } ;
struct TYPE_2__ {int backend_acquired; struct agp_controller* current_controller; struct agp_controller* controllers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  agp_bridge ; 
 TYPE_1__ agp_fe ; 
 int /*<<< orphan*/  FUNC1 (struct agp_controller*) ; 
 int /*<<< orphan*/  FUNC2 (struct agp_controller*) ; 
 int /*<<< orphan*/  FUNC3 (struct agp_controller*) ; 

__attribute__((used)) static int FUNC4(struct agp_controller *controller)
{
	struct agp_controller *prev_controller;
	struct agp_controller *next_controller;

	prev_controller = controller->prev;
	next_controller = controller->next;

	if (prev_controller != NULL) {
		prev_controller->next = next_controller;
		if (next_controller != NULL)
			next_controller->prev = prev_controller;

	} else {
		if (next_controller != NULL)
			next_controller->prev = NULL;

		agp_fe.controllers = next_controller;
	}

	FUNC2(controller);
	FUNC1(controller);

	if (agp_fe.current_controller == controller) {
		agp_fe.current_controller = NULL;
		agp_fe.backend_acquired = false;
		FUNC0(agp_bridge);
	}
	FUNC3(controller);
	return 0;
}