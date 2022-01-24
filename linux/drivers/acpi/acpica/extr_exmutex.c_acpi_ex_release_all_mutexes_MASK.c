#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ thread_id; int /*<<< orphan*/ * owner_thread; scalar_t__ acquisition_depth; union acpi_operand_object* next; int /*<<< orphan*/ * prev; int /*<<< orphan*/  original_sync_level; int /*<<< orphan*/  os_mutex; int /*<<< orphan*/  sync_level; TYPE_2__* node; } ;
union acpi_operand_object {TYPE_3__ mutex; } ;
struct acpi_thread_state {int /*<<< orphan*/  current_sync_level; union acpi_operand_object* acquired_mutex_list; } ;
struct TYPE_4__ {int /*<<< orphan*/  ascii; } ;
struct TYPE_5__ {TYPE_1__ name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 union acpi_operand_object* acpi_gbl_global_lock_mutex ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ex_release_all_mutexes ; 
 int /*<<< orphan*/  return_VOID ; 

void FUNC4(struct acpi_thread_state *thread)
{
	union acpi_operand_object *next = thread->acquired_mutex_list;
	union acpi_operand_object *obj_desc;

	FUNC1(ex_release_all_mutexes);

	/* Traverse the list of owned mutexes, releasing each one */

	while (next) {
		obj_desc = next;
		FUNC0((ACPI_DB_EXEC,
				  "Mutex [%4.4s] force-release, SyncLevel %u Depth %u\n",
				  obj_desc->mutex.node->name.ascii,
				  obj_desc->mutex.sync_level,
				  obj_desc->mutex.acquisition_depth));

		/* Release the mutex, special case for Global Lock */

		if (obj_desc == acpi_gbl_global_lock_mutex) {

			/* Ignore errors */

			(void)FUNC2();
		} else {
			FUNC3(obj_desc->mutex.os_mutex);
		}

		/* Update Thread sync_level (Last mutex is the important one) */

		thread->current_sync_level =
		    obj_desc->mutex.original_sync_level;

		/* Mark mutex unowned */

		next = obj_desc->mutex.next;

		obj_desc->mutex.prev = NULL;
		obj_desc->mutex.next = NULL;
		obj_desc->mutex.acquisition_depth = 0;
		obj_desc->mutex.owner_thread = NULL;
		obj_desc->mutex.thread_id = 0;
	}

	return_VOID;
}