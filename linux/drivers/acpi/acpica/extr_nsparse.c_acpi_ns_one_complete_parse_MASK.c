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
typedef  union acpi_parse_object {int dummy; } acpi_parse_object ;
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct acpi_walk_state {int /*<<< orphan*/  namespace_override; } ;
struct acpi_table_header {int length; int /*<<< orphan*/  signature; } ;
struct acpi_namespace_node {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_owner_id ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_DB_PARSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_IMODE_LOAD_PASS1 ; 
 int /*<<< orphan*/  ACPI_SIG_OSDT ; 
 int /*<<< orphan*/  ACPI_TYPE_METHOD ; 
 int /*<<< orphan*/  AE_BAD_HEADER ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  TRUE ; 
 struct acpi_walk_state* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_walk_state*,union acpi_parse_object*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct acpi_namespace_node*,int /*<<< orphan*/ ,struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 struct acpi_namespace_node* acpi_gbl_root_node ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,struct acpi_table_header**) ; 
 union acpi_parse_object* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (union acpi_parse_object*) ; 
 int /*<<< orphan*/  FUNC13 (union acpi_parse_object*) ; 
 int /*<<< orphan*/  FUNC14 (struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ns_one_complete_parse ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC17(u32 pass_number,
			   u32 table_index,
			   struct acpi_namespace_node *start_node)
{
	union acpi_parse_object *parse_root;
	acpi_status status;
	u32 aml_length;
	u8 *aml_start;
	struct acpi_walk_state *walk_state;
	struct acpi_table_header *table;
	acpi_owner_id owner_id;

	FUNC3(ns_one_complete_parse);

	status = FUNC10(table_index, &table);
	if (FUNC2(status)) {
		FUNC16(status);
	}

	/* Table must consist of at least a complete header */

	if (table->length < sizeof(struct acpi_table_header)) {
		FUNC16(AE_BAD_HEADER);
	}

	aml_start = (u8 *)table + sizeof(struct acpi_table_header);
	aml_length = table->length - sizeof(struct acpi_table_header);

	status = FUNC15(table_index, &owner_id);
	if (FUNC2(status)) {
		FUNC16(status);
	}

	/* Create and init a Root Node */

	parse_root = FUNC11(aml_start);
	if (!parse_root) {
		FUNC16(AE_NO_MEMORY);
	}

	/* Create and initialize a new walk state */

	walk_state = FUNC4(owner_id, NULL, NULL, NULL);
	if (!walk_state) {
		FUNC13(parse_root);
		FUNC16(AE_NO_MEMORY);
	}

	status = FUNC6(walk_state, parse_root, NULL,
				       aml_start, aml_length, NULL,
				       (u8)pass_number);
	if (FUNC2(status)) {
		FUNC5(walk_state);
		goto cleanup;
	}

	/* Found OSDT table, enable the namespace override feature */

	if (FUNC0(table->signature, ACPI_SIG_OSDT) &&
	    pass_number == ACPI_IMODE_LOAD_PASS1) {
		walk_state->namespace_override = TRUE;
	}

	/* start_node is the default location to load the table */

	if (start_node && start_node != acpi_gbl_root_node) {
		status =
		    FUNC7(start_node, ACPI_TYPE_METHOD,
					     walk_state);
		if (FUNC2(status)) {
			FUNC5(walk_state);
			goto cleanup;
		}
	}

	/* Parse the AML */

	FUNC1((ACPI_DB_PARSE,
			  "*PARSE* pass %u parse\n", pass_number));
	FUNC8();
	status = FUNC14(walk_state);
	FUNC9();

cleanup:
	FUNC12(parse_root);
	FUNC16(status);
}