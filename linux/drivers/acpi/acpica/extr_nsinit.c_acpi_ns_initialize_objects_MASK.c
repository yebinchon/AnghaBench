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
struct acpi_init_walk_info {int /*<<< orphan*/  op_region_count; int /*<<< orphan*/  method_count; int /*<<< orphan*/  object_count; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_DISPATCH ; 
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  ACPI_DB_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_ROOT_OBJECT ; 
 int /*<<< orphan*/  ACPI_TYPE_ANY ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  acpi_ns_init_one_object ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct acpi_init_walk_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_init_walk_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ns_initialize_objects ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

acpi_status FUNC8(void)
{
	acpi_status status;
	struct acpi_init_walk_info info;

	FUNC4(ns_initialize_objects);

	FUNC0((ACPI_DB_EXEC,
			  "[Init] Completing Initialization of ACPI Objects\n"));
	FUNC0((ACPI_DB_DISPATCH,
			  "**** Starting initialization of namespace objects ****\n"));
	FUNC1((ACPI_DB_INIT,
			      "Final data object initialization: "));

	/* Clear the info block */

	FUNC6(&info, 0, sizeof(struct acpi_init_walk_info));

	/* Walk entire namespace from the supplied root */

	/*
	 * TBD: will become ACPI_TYPE_PACKAGE as this type object
	 * is now the only one that supports deferred initialization
	 * (forward references).
	 */
	status = FUNC5(ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
				     ACPI_UINT32_MAX, acpi_ns_init_one_object,
				     NULL, &info, NULL);
	if (FUNC3(status)) {
		FUNC2((AE_INFO, status, "During WalkNamespace"));
	}

	FUNC1((ACPI_DB_INIT,
			      "Namespace contains %u (0x%X) objects\n",
			      info.object_count, info.object_count));

	FUNC0((ACPI_DB_DISPATCH,
			  "%u Control Methods found\n%u Op Regions found\n",
			  info.method_count, info.op_region_count));

	FUNC7(AE_OK);
}