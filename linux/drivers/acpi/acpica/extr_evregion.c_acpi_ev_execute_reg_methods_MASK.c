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
struct acpi_reg_walk_info {scalar_t__ space_id; scalar_t__ reg_run_count; int /*<<< orphan*/  function; } ;
struct acpi_namespace_node {int dummy; } ;
typedef  scalar_t__ acpi_adr_space_type ;

/* Variables and functions */
 scalar_t__ ACPI_ADR_SPACE_DATA_TABLE ; 
 scalar_t__ ACPI_ADR_SPACE_EC ; 
 scalar_t__ ACPI_ADR_SPACE_SYSTEM_IO ; 
 scalar_t__ ACPI_ADR_SPACE_SYSTEM_MEMORY ; 
 int /*<<< orphan*/  ACPI_DB_NAMES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_NS_WALK_UNLOCK ; 
 int /*<<< orphan*/  ACPI_TYPE_ANY ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  acpi_ev_reg_run ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct acpi_namespace_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct acpi_reg_walk_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  ev_execute_reg_methods ; 
 int /*<<< orphan*/  return_VOID ; 

void
FUNC5(struct acpi_namespace_node *node,
			    acpi_adr_space_type space_id, u32 function)
{
	struct acpi_reg_walk_info info;

	FUNC1(ev_execute_reg_methods);

	/*
	 * These address spaces do not need a call to _REG, since the ACPI
	 * specification defines them as: "must always be accessible". Since
	 * they never change state (never become unavailable), no need to ever
	 * call _REG on them. Also, a data_table is not a "real" address space,
	 * so do not call _REG. September 2018.
	 */
	if ((space_id == ACPI_ADR_SPACE_SYSTEM_MEMORY) ||
	    (space_id == ACPI_ADR_SPACE_SYSTEM_IO) ||
	    (space_id == ACPI_ADR_SPACE_DATA_TABLE)) {
		return_VOID;
	}

	info.space_id = space_id;
	info.function = function;
	info.reg_run_count = 0;

	FUNC0((ACPI_DB_NAMES,
			      "    Running _REG methods for SpaceId %s\n",
			      FUNC4(info.space_id)));

	/*
	 * Run all _REG methods for all Operation Regions for this space ID. This
	 * is a separate walk in order to handle any interdependencies between
	 * regions and _REG methods. (i.e. handlers must be installed for all
	 * regions of this Space ID before we can run any _REG methods)
	 */
	(void)FUNC3(ACPI_TYPE_ANY, node, ACPI_UINT32_MAX,
				     ACPI_NS_WALK_UNLOCK, acpi_ev_reg_run, NULL,
				     &info, NULL);

	/* Special case for EC: handle "orphan" _REG methods with no region */

	if (space_id == ACPI_ADR_SPACE_EC) {
		FUNC2(node);
	}

	FUNC0((ACPI_DB_NAMES,
			      "    Executed %u _REG methods for SpaceId %s\n",
			      info.reg_run_count,
			      FUNC4(info.space_id)));

	return_VOID;
}