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
typedef  size_t u32 ;
typedef  scalar_t__ acpi_thread_id ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  size_t acpi_mutex_handle ;
struct TYPE_2__ {scalar_t__ thread_id; int /*<<< orphan*/  use_count; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_MUTEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 size_t ACPI_MAX_MUTEX ; 
 size_t ACPI_NUM_MUTEX ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_WAIT_FOREVER ; 
 int /*<<< orphan*/  AE_ACQUIRE_DEADLOCK ; 
 int /*<<< orphan*/  AE_ALREADY_ACQUIRED ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_INFO ; 
 TYPE_1__* acpi_gbl_mutex_info ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (size_t) ; 
 int /*<<< orphan*/  ut_acquire_mutex ; 

acpi_status FUNC8(acpi_mutex_handle mutex_id)
{
	acpi_status status;
	acpi_thread_id this_thread_id;

	FUNC3(ut_acquire_mutex);

	if (mutex_id > ACPI_MAX_MUTEX) {
		return (AE_BAD_PARAMETER);
	}

	this_thread_id = FUNC6();

#ifdef ACPI_MUTEX_DEBUG
	{
		u32 i;
		/*
		 * Mutex debug code, for internal debugging only.
		 *
		 * Deadlock prevention. Check if this thread owns any mutexes of value
		 * greater than or equal to this one. If so, the thread has violated
		 * the mutex ordering rule. This indicates a coding error somewhere in
		 * the ACPI subsystem code.
		 */
		for (i = mutex_id; i < ACPI_NUM_MUTEX; i++) {
			if (acpi_gbl_mutex_info[i].thread_id == this_thread_id) {
				if (i == mutex_id) {
					ACPI_ERROR((AE_INFO,
						    "Mutex [%s] already acquired by this thread [%u]",
						    acpi_ut_get_mutex_name
						    (mutex_id),
						    (u32)this_thread_id));

					return (AE_ALREADY_ACQUIRED);
				}

				ACPI_ERROR((AE_INFO,
					    "Invalid acquire order: Thread %u owns [%s], wants [%s]",
					    (u32)this_thread_id,
					    acpi_ut_get_mutex_name(i),
					    acpi_ut_get_mutex_name(mutex_id)));

				return (AE_ACQUIRE_DEADLOCK);
			}
		}
	}
#endif

	FUNC0((ACPI_DB_MUTEX,
			  "Thread %u attempting to acquire Mutex [%s]\n",
			  (u32)this_thread_id,
			  FUNC7(mutex_id)));

	status =
	    FUNC5(acpi_gbl_mutex_info[mutex_id].mutex,
				  ACPI_WAIT_FOREVER);
	if (FUNC4(status)) {
		FUNC0((ACPI_DB_MUTEX,
				  "Thread %u acquired Mutex [%s]\n",
				  (u32)this_thread_id,
				  FUNC7(mutex_id)));

		acpi_gbl_mutex_info[mutex_id].use_count++;
		acpi_gbl_mutex_info[mutex_id].thread_id = this_thread_id;
	} else {
		FUNC2((AE_INFO, status,
				"Thread %u could not acquire Mutex [%s] (0x%X)",
				(u32)this_thread_id,
				FUNC7(mutex_id), mutex_id));
	}

	return (status);
}