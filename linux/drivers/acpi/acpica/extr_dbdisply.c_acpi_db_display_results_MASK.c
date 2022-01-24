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
typedef  union acpi_operand_object {int dummy; } acpi_operand_object ;
struct TYPE_2__ {union acpi_generic_state* next; union acpi_operand_object** obj_desc; } ;
union acpi_generic_state {TYPE_1__ results; } ;
typedef  int u32 ;
struct acpi_walk_state {int result_count; union acpi_generic_state* results; struct acpi_namespace_node* method_node; union acpi_operand_object* method_desc; } ;
struct acpi_namespace_node {int dummy; } ;

/* Variables and functions */
 int ACPI_RESULTS_FRAME_OBJ_NUM ; 
 int /*<<< orphan*/  FUNC0 (union acpi_operand_object*,struct acpi_walk_state*) ; 
 struct acpi_walk_state* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_gbl_current_walk_list ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_namespace_node*) ; 

void FUNC4(void)
{
	u32 i;
	struct acpi_walk_state *walk_state;
	union acpi_operand_object *obj_desc;
	u32 result_count = 0;
	struct acpi_namespace_node *node;
	union acpi_generic_state *frame;
	u32 index;		/* Index onto current frame */

	walk_state = FUNC1(acpi_gbl_current_walk_list);
	if (!walk_state) {
		FUNC2("There is no method currently executing\n");
		return;
	}

	obj_desc = walk_state->method_desc;
	node = walk_state->method_node;

	if (walk_state->results) {
		result_count = walk_state->result_count;
	}

	FUNC2("Method [%4.4s] has %X stacked result objects\n",
		       FUNC3(node), result_count);

	/* From the top element of result stack */

	frame = walk_state->results;
	index = (result_count - 1) % ACPI_RESULTS_FRAME_OBJ_NUM;

	for (i = 0; i < result_count; i++) {
		obj_desc = frame->results.obj_desc[index];
		FUNC2("Result%u: ", i);
		FUNC0(obj_desc, walk_state);

		if (index == 0) {
			frame = frame->results.next;
			index = ACPI_RESULTS_FRAME_OBJ_NUM;
		}

		index--;
	}
}