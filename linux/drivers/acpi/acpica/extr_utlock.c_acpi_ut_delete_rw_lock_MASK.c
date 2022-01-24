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
struct acpi_rw_lock {int /*<<< orphan*/ * writer_mutex; int /*<<< orphan*/ * reader_mutex; scalar_t__ num_readers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct acpi_rw_lock *lock)
{

	FUNC0(lock->reader_mutex);
	FUNC0(lock->writer_mutex);

	lock->num_readers = 0;
	lock->reader_mutex = NULL;
	lock->writer_mutex = NULL;
}