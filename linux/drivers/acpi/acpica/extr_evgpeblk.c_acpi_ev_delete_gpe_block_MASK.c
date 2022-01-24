#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct acpi_gpe_block_info {struct acpi_gpe_block_info* event_info; struct acpi_gpe_block_info* register_info; scalar_t__ gpe_count; TYPE_2__* previous; TYPE_1__* next; TYPE_3__* xrupt_block; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_cpu_flags ;
struct TYPE_7__ {TYPE_1__* gpe_block_list_head; } ;
struct TYPE_6__ {TYPE_1__* next; } ;
struct TYPE_5__ {TYPE_2__* previous; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_gpe_block_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_MTX_EVENTS ; 
 int /*<<< orphan*/  acpi_current_gpe_count ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  acpi_gbl_gpe_lock ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,struct acpi_gpe_block_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ev_install_gpe_block ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

acpi_status FUNC10(struct acpi_gpe_block_info *gpe_block)
{
	acpi_status status;
	acpi_cpu_flags flags;

	FUNC2(ev_install_gpe_block);

	status = FUNC7(ACPI_MTX_EVENTS);
	if (FUNC0(status)) {
		FUNC9(status);
	}

	/* Disable all GPEs in this block */

	status =
	    FUNC4(gpe_block->xrupt_block, gpe_block, NULL);

	if (!gpe_block->previous && !gpe_block->next) {

		/* This is the last gpe_block on this interrupt */

		status = FUNC3(gpe_block->xrupt_block);
		if (FUNC0(status)) {
			goto unlock_and_exit;
		}
	} else {
		/* Remove the block on this interrupt with lock */

		flags = FUNC5(acpi_gbl_gpe_lock);
		if (gpe_block->previous) {
			gpe_block->previous->next = gpe_block->next;
		} else {
			gpe_block->xrupt_block->gpe_block_list_head =
			    gpe_block->next;
		}

		if (gpe_block->next) {
			gpe_block->next->previous = gpe_block->previous;
		}

		FUNC6(acpi_gbl_gpe_lock, flags);
	}

	acpi_current_gpe_count -= gpe_block->gpe_count;

	/* Free the gpe_block */

	FUNC1(gpe_block->register_info);
	FUNC1(gpe_block->event_info);
	FUNC1(gpe_block);

unlock_and_exit:
	status = FUNC8(ACPI_MTX_EVENTS);
	FUNC9(status);
}