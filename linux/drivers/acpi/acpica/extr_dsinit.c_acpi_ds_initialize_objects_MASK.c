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
typedef  int /*<<< orphan*/  u32 ;
struct acpi_table_header {int /*<<< orphan*/  oem_table_id; int /*<<< orphan*/  signature; } ;
struct acpi_namespace_node {int dummy; } ;
struct acpi_init_walk_info {int /*<<< orphan*/  op_region_count; int /*<<< orphan*/  method_count; int /*<<< orphan*/  serialized_method_count; int /*<<< orphan*/  non_serial_method_count; int /*<<< orphan*/  serial_method_count; int /*<<< orphan*/  device_count; int /*<<< orphan*/  object_count; int /*<<< orphan*/  table_index; int /*<<< orphan*/  owner_id; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_owner_id ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_DB_DISPATCH ; 
 int /*<<< orphan*/  ACPI_DB_INIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_NS_WALK_NO_UNLOCK ; 
 int /*<<< orphan*/  ACPI_SIG_DSDT ; 
 int /*<<< orphan*/  ACPI_TYPE_ANY ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  acpi_ds_init_one_object ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct acpi_table_header**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct acpi_namespace_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct acpi_init_walk_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ds_initialize_objects ; 
 int /*<<< orphan*/  FUNC9 (struct acpi_init_walk_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC11(u32 table_index,
			   struct acpi_namespace_node *start_node)
{
	acpi_status status;
	struct acpi_init_walk_info info;
	struct acpi_table_header *table;
	acpi_owner_id owner_id;

	FUNC5(ds_initialize_objects);

	status = FUNC8(table_index, &owner_id);
	if (FUNC4(status)) {
		FUNC10(status);
	}

	FUNC1((ACPI_DB_DISPATCH,
			  "**** Starting initialization of namespace objects ****\n"));

	/* Set all init info to zero */

	FUNC9(&info, 0, sizeof(struct acpi_init_walk_info));

	info.owner_id = owner_id;
	info.table_index = table_index;

	/* Walk entire namespace from the supplied root */

	/*
	 * We don't use acpi_walk_namespace since we do not want to acquire
	 * the namespace reader lock.
	 */
	status =
	    FUNC7(ACPI_TYPE_ANY, start_node, ACPI_UINT32_MAX,
				   ACPI_NS_WALK_NO_UNLOCK,
				   acpi_ds_init_one_object, NULL, &info, NULL);
	if (FUNC4(status)) {
		FUNC3((AE_INFO, status, "During WalkNamespace"));
	}

	status = FUNC6(table_index, &table);
	if (FUNC4(status)) {
		FUNC10(status);
	}

	/* DSDT is always the first AML table */

	if (FUNC0(table->signature, ACPI_SIG_DSDT)) {
		FUNC2((ACPI_DB_INIT,
				      "\nACPI table initialization:\n"));
	}

	/* Summary of objects initialized */

	FUNC2((ACPI_DB_INIT,
			      "Table [%4.4s: %-8.8s] (id %.2X) - %4u Objects with %3u Devices, "
			      "%3u Regions, %4u Methods (%u/%u/%u Serial/Non/Cvt)\n",
			      table->signature, table->oem_table_id, owner_id,
			      info.object_count, info.device_count,
			      info.op_region_count, info.method_count,
			      info.serial_method_count,
			      info.non_serial_method_count,
			      info.serialized_method_count));

	FUNC1((ACPI_DB_DISPATCH, "%u Methods, %u Regions\n",
			  info.method_count, info.op_region_count));

	FUNC10(AE_OK);
}