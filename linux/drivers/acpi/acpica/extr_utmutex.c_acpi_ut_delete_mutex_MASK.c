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
typedef  size_t acpi_mutex_handle ;
struct TYPE_2__ {int /*<<< orphan*/  thread_id; int /*<<< orphan*/ * mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  ACPI_MUTEX_NOT_ACQUIRED ; 
 TYPE_1__* acpi_gbl_mutex_info ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  return_VOID ; 
 int /*<<< orphan*/  ut_delete_mutex ; 

__attribute__((used)) static void FUNC2(acpi_mutex_handle mutex_id)
{

	FUNC0(ut_delete_mutex, mutex_id);

	FUNC1(acpi_gbl_mutex_info[mutex_id].mutex);

	acpi_gbl_mutex_info[mutex_id].mutex = NULL;
	acpi_gbl_mutex_info[mutex_id].thread_id = ACPI_MUTEX_NOT_ACQUIRED;

	return_VOID;
}