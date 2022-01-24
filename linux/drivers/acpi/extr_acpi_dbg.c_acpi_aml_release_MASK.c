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
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ users; int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_AML_CLOSED ; 
 int /*<<< orphan*/  ACPI_AML_OPENED ; 
 struct file* acpi_aml_active_reader ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ acpi_aml_io ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct file *file)
{
	FUNC3(&acpi_aml_io.lock);
	acpi_aml_io.users--;
	if (file == acpi_aml_active_reader) {
		FUNC5("Closing debugger reader.\n");
		acpi_aml_active_reader = NULL;

		FUNC5("Closing debugger interface.\n");
		acpi_aml_io.flags |= ACPI_AML_CLOSED;

		/*
		 * Wake up all user space/kernel space blocked
		 * readers/writers.
		 */
		FUNC7(&acpi_aml_io.wait);
		FUNC4(&acpi_aml_io.lock);
		/*
		 * Wait all user space/kernel space readers/writers to
		 * stop so that ACPICA command loop of the debugger thread
		 * should fail all its command line reads after this point.
		 */
		FUNC6(acpi_aml_io.wait, !FUNC0());

		/*
		 * Then we try to terminate the debugger thread if it is
		 * not terminated.
		 */
		FUNC5("Terminating debugger thread.\n");
		FUNC2();
		FUNC6(acpi_aml_io.wait, !FUNC1());
		FUNC5("Debugger thread terminated.\n");

		FUNC3(&acpi_aml_io.lock);
		acpi_aml_io.flags &= ~ACPI_AML_OPENED;
	}
	if (acpi_aml_io.users == 0) {
		FUNC5("Debugger interface closed.\n");
		acpi_aml_io.flags &= ~ACPI_AML_CLOSED;
	}
	FUNC4(&acpi_aml_io.lock);
	return 0;
}