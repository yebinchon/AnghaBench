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
typedef  union acpi_operand_object {int dummy; } acpi_operand_object ;
typedef  union acpi_object {int dummy; } acpi_object ;
typedef  union acpi_generic_state {int dummy; } acpi_generic_state ;
typedef  int u32 ;
struct acpi_update_state {int dummy; } ;
struct acpi_thread_state {int dummy; } ;
struct acpi_scope_state {int dummy; } ;
struct acpi_result_values {int dummy; } ;
struct acpi_pscope_state {int dummy; } ;
struct acpi_pkg_state {int dummy; } ;
struct acpi_parse_obj_named {int dummy; } ;
struct acpi_parse_obj_common {int dummy; } ;
struct acpi_parse_obj_asl {int dummy; } ;
struct acpi_object_thermal_zone {int dummy; } ;
struct acpi_object_string {int dummy; } ;
struct acpi_object_region_field {int dummy; } ;
struct acpi_object_region {int dummy; } ;
struct acpi_object_reference {int dummy; } ;
struct acpi_object_processor {int dummy; } ;
struct acpi_object_power_resource {int dummy; } ;
struct acpi_object_package {int dummy; } ;
struct acpi_object_notify_handler {int dummy; } ;
struct acpi_object_mutex {int dummy; } ;
struct acpi_object_method {int dummy; } ;
struct acpi_object_integer {int dummy; } ;
struct acpi_object_index_field {int dummy; } ;
struct acpi_object_extra {int dummy; } ;
struct acpi_object_event {int dummy; } ;
struct acpi_object_device {int dummy; } ;
struct acpi_object_data {int dummy; } ;
struct acpi_object_common {int dummy; } ;
struct acpi_object_buffer_field {int dummy; } ;
struct acpi_object_buffer {int dummy; } ;
struct acpi_object_bank_field {int dummy; } ;
struct acpi_object_addr_handler {int dummy; } ;
struct acpi_notify_info {int dummy; } ;
struct acpi_namespace_node {int dummy; } ;
struct acpi_control_state {int dummy; } ;
struct acpi_common_state {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_2__ {int /*<<< orphan*/  use_count; } ;

/* Variables and functions */
 int ACPI_NUM_MUTEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ACPI_TYPE_NOT_FOUND ; 
 int ACPI_TYPE_NS_NODE_MAX ; 
 int /*<<< orphan*/  AE_OK ; 
#define  CMD_STAT_ALLOCATIONS 134 
#define  CMD_STAT_MEMORY 133 
#define  CMD_STAT_MISC 132 
#define  CMD_STAT_OBJECTS 131 
#define  CMD_STAT_SIZES 130 
#define  CMD_STAT_STACK 129 
#define  CMD_STAT_TABLES 128 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_db_stat_types ; 
 int /*<<< orphan*/  acpi_gbl_deepest_nesting ; 
 int /*<<< orphan*/  acpi_gbl_entry_stack_pointer ; 
 int /*<<< orphan*/  acpi_gbl_global_list ; 
 int /*<<< orphan*/  acpi_gbl_lowest_stack_pointer ; 
 TYPE_1__* acpi_gbl_mutex_info ; 
 int /*<<< orphan*/ * acpi_gbl_node_type_count ; 
 int /*<<< orphan*/  acpi_gbl_node_type_count_misc ; 
 int /*<<< orphan*/  acpi_gbl_ns_lookup_count ; 
 int /*<<< orphan*/  acpi_gbl_ns_node_list ; 
 int /*<<< orphan*/  acpi_gbl_num_nodes ; 
 int /*<<< orphan*/  acpi_gbl_num_objects ; 
 int /*<<< orphan*/ * acpi_gbl_obj_type_count ; 
 int /*<<< orphan*/  acpi_gbl_obj_type_count_misc ; 
 int /*<<< orphan*/  acpi_gbl_operand_cache ; 
 int /*<<< orphan*/  acpi_gbl_ps_find_count ; 
 int /*<<< orphan*/  acpi_gbl_ps_node_cache ; 
 int /*<<< orphan*/  acpi_gbl_ps_node_ext_cache ; 
 int /*<<< orphan*/  acpi_gbl_state_cache ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

acpi_status FUNC9(char *type_arg)
{
	u32 i;
	u32 temp;

	FUNC8(type_arg);
	temp = FUNC3(type_arg, acpi_db_stat_types);
	if (temp == ACPI_TYPE_NOT_FOUND) {
		FUNC4("Invalid or unsupported argument\n");
		return (AE_OK);
	}

	switch (temp) {
	case CMD_STAT_ALLOCATIONS:

#ifdef ACPI_DBG_TRACK_ALLOCATIONS
		acpi_ut_dump_allocation_info();
#endif
		break;

	case CMD_STAT_TABLES:

		FUNC4("ACPI Table Information (not implemented):\n\n");
		break;

	case CMD_STAT_OBJECTS:

		FUNC1();

		FUNC4
		    ("\nObjects defined in the current namespace:\n\n");

		FUNC4("%16.16s %10.10s %10.10s\n",
			       "ACPI_TYPE", "NODES", "OBJECTS");

		for (i = 0; i < ACPI_TYPE_NS_NODE_MAX; i++) {
			FUNC4("%16.16s %10u %10u\n",
				       FUNC7(i),
				       acpi_gbl_node_type_count[i],
				       acpi_gbl_obj_type_count[i]);
		}

		FUNC4("%16.16s %10u %10u\n", "Misc/Unknown",
			       acpi_gbl_node_type_count_misc,
			       acpi_gbl_obj_type_count_misc);

		FUNC4("%16.16s %10u %10u\n", "TOTALS:",
			       acpi_gbl_num_nodes, acpi_gbl_num_objects);
		break;

	case CMD_STAT_MEMORY:

#ifdef ACPI_DBG_TRACK_ALLOCATIONS
		acpi_os_printf
		    ("\n----Object Statistics (all in hex)---------\n");

		acpi_db_list_info(acpi_gbl_global_list);
		acpi_db_list_info(acpi_gbl_ns_node_list);
#endif

#ifdef ACPI_USE_LOCAL_CACHE
		acpi_os_printf
		    ("\n----Cache Statistics (all in hex)---------\n");
		acpi_db_list_info(acpi_gbl_operand_cache);
		acpi_db_list_info(acpi_gbl_ps_node_cache);
		acpi_db_list_info(acpi_gbl_ps_node_ext_cache);
		acpi_db_list_info(acpi_gbl_state_cache);
#endif

		break;

	case CMD_STAT_MISC:

		FUNC4("\nMiscellaneous Statistics:\n\n");
		FUNC4("%-28s:     %7u\n", "Calls to AcpiPsFind",
			       acpi_gbl_ps_find_count);
		FUNC4("%-28s:     %7u\n", "Calls to AcpiNsLookup",
			       acpi_gbl_ns_lookup_count);

		FUNC4("\nMutex usage:\n\n");
		for (i = 0; i < ACPI_NUM_MUTEX; i++) {
			FUNC4("%-28s:     %7u\n",
				       FUNC6(i),
				       acpi_gbl_mutex_info[i].use_count);
		}
		break;

	case CMD_STAT_SIZES:

		FUNC4("\nInternal object sizes:\n\n");

		FUNC4("Common         %3d\n",
			       (u32)sizeof(struct acpi_object_common));
		FUNC4("Number         %3d\n",
			       (u32)sizeof(struct acpi_object_integer));
		FUNC4("String         %3d\n",
			       (u32)sizeof(struct acpi_object_string));
		FUNC4("Buffer         %3d\n",
			       (u32)sizeof(struct acpi_object_buffer));
		FUNC4("Package        %3d\n",
			       (u32)sizeof(struct acpi_object_package));
		FUNC4("BufferField    %3d\n",
			       (u32)sizeof(struct acpi_object_buffer_field));
		FUNC4("Device         %3d\n",
			       (u32)sizeof(struct acpi_object_device));
		FUNC4("Event          %3d\n",
			       (u32)sizeof(struct acpi_object_event));
		FUNC4("Method         %3d\n",
			       (u32)sizeof(struct acpi_object_method));
		FUNC4("Mutex          %3d\n",
			       (u32)sizeof(struct acpi_object_mutex));
		FUNC4("Region         %3d\n",
			       (u32)sizeof(struct acpi_object_region));
		FUNC4("PowerResource  %3d\n",
			       (u32)sizeof(struct acpi_object_power_resource));
		FUNC4("Processor      %3d\n",
			       (u32)sizeof(struct acpi_object_processor));
		FUNC4("ThermalZone    %3d\n",
			       (u32)sizeof(struct acpi_object_thermal_zone));
		FUNC4("RegionField    %3d\n",
			       (u32)sizeof(struct acpi_object_region_field));
		FUNC4("BankField      %3d\n",
			       (u32)sizeof(struct acpi_object_bank_field));
		FUNC4("IndexField     %3d\n",
			       (u32)sizeof(struct acpi_object_index_field));
		FUNC4("Reference      %3d\n",
			       (u32)sizeof(struct acpi_object_reference));
		FUNC4("Notify         %3d\n",
			       (u32)sizeof(struct acpi_object_notify_handler));
		FUNC4("AddressSpace   %3d\n",
			       (u32)sizeof(struct acpi_object_addr_handler));
		FUNC4("Extra          %3d\n",
			       (u32)sizeof(struct acpi_object_extra));
		FUNC4("Data           %3d\n",
			       (u32)sizeof(struct acpi_object_data));

		FUNC4("\n");

		FUNC4("ParseObject    %3d\n",
			       (u32)sizeof(struct acpi_parse_obj_common));
		FUNC4("ParseObjectNamed %3d\n",
			       (u32)sizeof(struct acpi_parse_obj_named));
		FUNC4("ParseObjectAsl %3d\n",
			       (u32)sizeof(struct acpi_parse_obj_asl));
		FUNC4("OperandObject  %3d\n",
			       (u32)sizeof(union acpi_operand_object));
		FUNC4("NamespaceNode  %3d\n",
			       (u32)sizeof(struct acpi_namespace_node));
		FUNC4("AcpiObject     %3d\n",
			       (u32)sizeof(union acpi_object));

		FUNC4("\n");

		FUNC4("Generic State  %3d\n",
			       (u32)sizeof(union acpi_generic_state));
		FUNC4("Common State   %3d\n",
			       (u32)sizeof(struct acpi_common_state));
		FUNC4("Control State  %3d\n",
			       (u32)sizeof(struct acpi_control_state));
		FUNC4("Update State   %3d\n",
			       (u32)sizeof(struct acpi_update_state));
		FUNC4("Scope State    %3d\n",
			       (u32)sizeof(struct acpi_scope_state));
		FUNC4("Parse Scope    %3d\n",
			       (u32)sizeof(struct acpi_pscope_state));
		FUNC4("Package State  %3d\n",
			       (u32)sizeof(struct acpi_pkg_state));
		FUNC4("Thread State   %3d\n",
			       (u32)sizeof(struct acpi_thread_state));
		FUNC4("Result Values  %3d\n",
			       (u32)sizeof(struct acpi_result_values));
		FUNC4("Notify Info    %3d\n",
			       (u32)sizeof(struct acpi_notify_info));
		break;

	case CMD_STAT_STACK:
#if defined(ACPI_DEBUG_OUTPUT)

		temp =
		    (u32)ACPI_PTR_DIFF(acpi_gbl_entry_stack_pointer,
				       acpi_gbl_lowest_stack_pointer);

		acpi_os_printf("\nSubsystem Stack Usage:\n\n");
		acpi_os_printf("Entry Stack Pointer        %p\n",
			       acpi_gbl_entry_stack_pointer);
		acpi_os_printf("Lowest Stack Pointer       %p\n",
			       acpi_gbl_lowest_stack_pointer);
		acpi_os_printf("Stack Use                  %X (%u)\n", temp,
			       temp);
		acpi_os_printf("Deepest Procedure Nesting  %u\n",
			       acpi_gbl_deepest_nesting);
#endif
		break;

	default:

		break;
	}

	FUNC4("\n");
	return (AE_OK);
}