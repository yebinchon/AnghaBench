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
struct task_struct {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_thread_id ;
typedef  int /*<<< orphan*/  acpi_osd_exec_callback ;
struct TYPE_2__ {int /*<<< orphan*/  lock; struct task_struct* thread; void* context; int /*<<< orphan*/  function; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct task_struct*) ; 
 int FUNC1 (struct task_struct*) ; 
 TYPE_1__ acpi_aml_io ; 
 int /*<<< orphan*/  acpi_aml_thread ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct task_struct* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*) ; 

__attribute__((used)) static int FUNC8(acpi_osd_exec_callback function, void *context)
{
	struct task_struct *t;

	FUNC4(&acpi_aml_io.lock);
	acpi_aml_io.function = function;
	acpi_aml_io.context = context;
	FUNC5(&acpi_aml_io.lock);

	t = FUNC3(acpi_aml_thread, NULL, "aml");
	if (FUNC0(t)) {
		FUNC6("Failed to create AML debugger thread.\n");
		return FUNC1(t);
	}

	FUNC4(&acpi_aml_io.lock);
	acpi_aml_io.thread = t;
	FUNC2((acpi_thread_id)(unsigned long)t);
	FUNC7(t);
	FUNC5(&acpi_aml_io.lock);
	return 0;
}