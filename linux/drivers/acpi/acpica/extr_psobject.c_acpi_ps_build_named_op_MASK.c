#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ length; int /*<<< orphan*/ * data; int /*<<< orphan*/  aml; } ;
struct TYPE_4__ {union acpi_parse_object* arg; } ;
struct TYPE_5__ {scalar_t__ aml_opcode; int /*<<< orphan*/ * end_blk_comment; int /*<<< orphan*/ * comment_list; int /*<<< orphan*/ * name_comment; int /*<<< orphan*/ * close_brace_comment; int /*<<< orphan*/ * end_node_comment; int /*<<< orphan*/ * inline_comment; int /*<<< orphan*/  aml; int /*<<< orphan*/  cv_parent_filename; int /*<<< orphan*/  cv_filename; TYPE_1__ value; scalar_t__ arg_list_length; } ;
union acpi_parse_object {TYPE_3__ named; TYPE_2__ common; } ;
typedef  int /*<<< orphan*/  u8 ;
struct acpi_walk_state {scalar_t__ opcode; scalar_t__ (* descending_callback ) (struct acpi_walk_state*,union acpi_parse_object**) ;int /*<<< orphan*/ * op; int /*<<< orphan*/  arg_types; int /*<<< orphan*/  parser_state; } ;
typedef  scalar_t__ acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct acpi_walk_state*) ; 
 scalar_t__ AE_AML_NO_OPERAND ; 
 scalar_t__ AE_CTRL_PARSE_CONTINUE ; 
 scalar_t__ AE_CTRL_PARSE_PENDING ; 
 scalar_t__ AE_CTRL_PENDING ; 
 scalar_t__ AE_CTRL_TERMINATE ; 
 int /*<<< orphan*/  AE_INFO ; 
 scalar_t__ AE_OK ; 
 scalar_t__ AML_DATA_REGION_OP ; 
 scalar_t__ AML_REGION_OP ; 
 scalar_t__ ARGP_NAME ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_walk_state*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * acpi_gbl_current_inline_comment ; 
 int /*<<< orphan*/  FUNC6 (union acpi_parse_object*,union acpi_parse_object*) ; 
 scalar_t__ FUNC7 (struct acpi_walk_state*,int /*<<< orphan*/ *,scalar_t__,union acpi_parse_object**) ; 
 scalar_t__ FUNC8 (struct acpi_walk_state*,union acpi_parse_object*,scalar_t__) ; 
 int /*<<< orphan*/  ps_build_named_op ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (struct acpi_walk_state*,union acpi_parse_object**) ; 

acpi_status
FUNC11(struct acpi_walk_state *walk_state,
		       u8 *aml_op_start,
		       union acpi_parse_object *unnamed_op,
		       union acpi_parse_object **op)
{
	acpi_status status = AE_OK;
	union acpi_parse_object *arg = NULL;

	FUNC2(ps_build_named_op, walk_state);

	unnamed_op->common.value.arg = NULL;
	unnamed_op->common.arg_list_length = 0;
	unnamed_op->common.aml_opcode = walk_state->opcode;

	/*
	 * Get and append arguments until we find the node that contains
	 * the name (the type ARGP_NAME).
	 */
	while (FUNC4(walk_state->arg_types) &&
	       (FUNC4(walk_state->arg_types) != ARGP_NAME)) {
		FUNC3(walk_state);
		status =
		    FUNC7(walk_state,
					 &(walk_state->parser_state),
					 FUNC4(walk_state->
							      arg_types), &arg);
		if (FUNC1(status)) {
			FUNC9(status);
		}

		FUNC6(unnamed_op, arg);
		FUNC5(walk_state->arg_types);
	}

	/* are there any inline comments associated with the name_seg?? If so, save this. */

	FUNC3(walk_state);

#ifdef ACPI_ASL_COMPILER
	if (acpi_gbl_current_inline_comment != NULL) {
		unnamed_op->common.name_comment =
		    acpi_gbl_current_inline_comment;
		acpi_gbl_current_inline_comment = NULL;
	}
#endif

	/*
	 * Make sure that we found a NAME and didn't run out of arguments
	 */
	if (!FUNC4(walk_state->arg_types)) {
		FUNC9(AE_AML_NO_OPERAND);
	}

	/* We know that this arg is a name, move to next arg */

	FUNC5(walk_state->arg_types);

	/*
	 * Find the object. This will either insert the object into
	 * the namespace or simply look it up
	 */
	walk_state->op = NULL;

	status = walk_state->descending_callback(walk_state, op);
	if (FUNC1(status)) {
		if (status != AE_CTRL_TERMINATE) {
			FUNC0((AE_INFO, status,
					"During name lookup/catalog"));
		}
		FUNC9(status);
	}

	if (!*op) {
		FUNC9(AE_CTRL_PARSE_CONTINUE);
	}

	status = FUNC8(walk_state, *op, status);
	if (FUNC1(status)) {
		if (status == AE_CTRL_PENDING) {
			status = AE_CTRL_PARSE_PENDING;
		}
		FUNC9(status);
	}

	FUNC6(*op, unnamed_op->common.value.arg);

#ifdef ACPI_ASL_COMPILER

	/* save any comments that might be associated with unnamed_op. */

	(*op)->common.inline_comment = unnamed_op->common.inline_comment;
	(*op)->common.end_node_comment = unnamed_op->common.end_node_comment;
	(*op)->common.close_brace_comment =
	    unnamed_op->common.close_brace_comment;
	(*op)->common.name_comment = unnamed_op->common.name_comment;
	(*op)->common.comment_list = unnamed_op->common.comment_list;
	(*op)->common.end_blk_comment = unnamed_op->common.end_blk_comment;
	(*op)->common.cv_filename = unnamed_op->common.cv_filename;
	(*op)->common.cv_parent_filename =
	    unnamed_op->common.cv_parent_filename;
	(*op)->named.aml = unnamed_op->common.aml;

	unnamed_op->common.inline_comment = NULL;
	unnamed_op->common.end_node_comment = NULL;
	unnamed_op->common.close_brace_comment = NULL;
	unnamed_op->common.name_comment = NULL;
	unnamed_op->common.comment_list = NULL;
	unnamed_op->common.end_blk_comment = NULL;
#endif

	if ((*op)->common.aml_opcode == AML_REGION_OP ||
	    (*op)->common.aml_opcode == AML_DATA_REGION_OP) {
		/*
		 * Defer final parsing of an operation_region body, because we don't
		 * have enough info in the first pass to parse it correctly (i.e.,
		 * there may be method calls within the term_arg elements of the body.)
		 *
		 * However, we must continue parsing because the opregion is not a
		 * standalone package -- we don't know where the end is at this point.
		 *
		 * (Length is unknown until parse of the body complete)
		 */
		(*op)->named.data = aml_op_start;
		(*op)->named.length = 0;
	}

	FUNC9(AE_OK);
}