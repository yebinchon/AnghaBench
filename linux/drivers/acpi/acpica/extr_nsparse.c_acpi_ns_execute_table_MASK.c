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
struct TYPE_2__ {int aml_length; int /*<<< orphan*/  info_flags; int /*<<< orphan*/  owner_id; int /*<<< orphan*/ * aml_start; } ;
union acpi_operand_object {TYPE_1__ method; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct acpi_table_header {int length; int /*<<< orphan*/  signature; } ;
struct acpi_namespace_node {int /*<<< orphan*/  flags; } ;
struct acpi_evaluate_info {struct acpi_evaluate_info* full_pathname; struct acpi_namespace_node* node; int /*<<< orphan*/  node_flags; union acpi_operand_object* obj_desc; int /*<<< orphan*/  pass_number; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_owner_id ;

/* Variables and functions */
 struct acpi_evaluate_info* FUNC0 (int) ; 
 int /*<<< orphan*/  ACPI_DB_EVALUATION ; 
 int /*<<< orphan*/  ACPI_DB_PARSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_evaluate_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_GET_FUNCTION_NAME ; 
 int /*<<< orphan*/  ACPI_IMODE_EXECUTE ; 
 int /*<<< orphan*/  ACPI_METHOD_MODULE_LEVEL ; 
 int /*<<< orphan*/  ACPI_TYPE_METHOD ; 
 int /*<<< orphan*/  AE_BAD_HEADER ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int,struct acpi_table_header**) ; 
 struct acpi_evaluate_info* FUNC6 (struct acpi_namespace_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct acpi_evaluate_info*) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *) ; 
 union acpi_operand_object* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ns_execute_table ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC12(u32 table_index, struct acpi_namespace_node *start_node)
{
	acpi_status status;
	struct acpi_table_header *table;
	acpi_owner_id owner_id;
	struct acpi_evaluate_info *info = NULL;
	u32 aml_length;
	u8 *aml_start;
	union acpi_operand_object *method_obj = NULL;

	FUNC4(ns_execute_table);

	status = FUNC5(table_index, &table);
	if (FUNC2(status)) {
		FUNC11(status);
	}

	/* Table must consist of at least a complete header */

	if (table->length < sizeof(struct acpi_table_header)) {
		FUNC11(AE_BAD_HEADER);
	}

	aml_start = (u8 *)table + sizeof(struct acpi_table_header);
	aml_length = table->length - sizeof(struct acpi_table_header);

	status = FUNC8(table_index, &owner_id);
	if (FUNC2(status)) {
		FUNC11(status);
	}

	/* Create, initialize, and link a new temporary method object */

	method_obj = FUNC9(ACPI_TYPE_METHOD);
	if (!method_obj) {
		FUNC11(AE_NO_MEMORY);
	}

	/* Allocate the evaluation information block */

	info = FUNC0(sizeof(struct acpi_evaluate_info));
	if (!info) {
		status = AE_NO_MEMORY;
		goto cleanup;
	}

	FUNC1((ACPI_DB_PARSE,
			      "%s: Create table pseudo-method for [%4.4s] @%p, method %p\n",
			      ACPI_GET_FUNCTION_NAME, table->signature, table,
			      method_obj));

	method_obj->method.aml_start = aml_start;
	method_obj->method.aml_length = aml_length;
	method_obj->method.owner_id = owner_id;
	method_obj->method.info_flags |= ACPI_METHOD_MODULE_LEVEL;

	info->pass_number = ACPI_IMODE_EXECUTE;
	info->node = start_node;
	info->obj_desc = method_obj;
	info->node_flags = info->node->flags;
	info->full_pathname = FUNC6(info->node, TRUE);
	if (!info->full_pathname) {
		status = AE_NO_MEMORY;
		goto cleanup;
	}

	/* Optional object evaluation log */

	FUNC1((ACPI_DB_EVALUATION,
			      "%-26s:  (Definition Block level)\n",
			      "Module-level evaluation"));

	status = FUNC7(info);

	/* Optional object evaluation log */

	FUNC1((ACPI_DB_EVALUATION,
			      "%-26s:  (Definition Block level)\n",
			      "Module-level complete"));

cleanup:
	if (info) {
		FUNC3(info->full_pathname);
		info->full_pathname = NULL;
	}
	FUNC3(info);
	FUNC10(method_obj);
	FUNC11(status);
}