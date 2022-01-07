
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_reg_walk_info {scalar_t__ space_id; scalar_t__ reg_run_count; int function; } ;
struct acpi_namespace_node {int dummy; } ;
typedef scalar_t__ acpi_adr_space_type ;


 scalar_t__ ACPI_ADR_SPACE_DATA_TABLE ;
 scalar_t__ ACPI_ADR_SPACE_EC ;
 scalar_t__ ACPI_ADR_SPACE_SYSTEM_IO ;
 scalar_t__ ACPI_ADR_SPACE_SYSTEM_MEMORY ;
 int ACPI_DB_NAMES ;
 int ACPI_DEBUG_PRINT_RAW (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_NS_WALK_UNLOCK ;
 int ACPI_TYPE_ANY ;
 int ACPI_UINT32_MAX ;
 int acpi_ev_orphan_ec_reg_method (struct acpi_namespace_node*) ;
 int acpi_ev_reg_run ;
 int acpi_ns_walk_namespace (int ,struct acpi_namespace_node*,int ,int ,int ,int *,struct acpi_reg_walk_info*,int *) ;
 int acpi_ut_get_region_name (scalar_t__) ;
 int ev_execute_reg_methods ;
 int return_VOID ;

void
acpi_ev_execute_reg_methods(struct acpi_namespace_node *node,
       acpi_adr_space_type space_id, u32 function)
{
 struct acpi_reg_walk_info info;

 ACPI_FUNCTION_TRACE(ev_execute_reg_methods);
 if ((space_id == ACPI_ADR_SPACE_SYSTEM_MEMORY) ||
     (space_id == ACPI_ADR_SPACE_SYSTEM_IO) ||
     (space_id == ACPI_ADR_SPACE_DATA_TABLE)) {
  return_VOID;
 }

 info.space_id = space_id;
 info.function = function;
 info.reg_run_count = 0;

 ACPI_DEBUG_PRINT_RAW((ACPI_DB_NAMES,
         "    Running _REG methods for SpaceId %s\n",
         acpi_ut_get_region_name(info.space_id)));







 (void)acpi_ns_walk_namespace(ACPI_TYPE_ANY, node, ACPI_UINT32_MAX,
         ACPI_NS_WALK_UNLOCK, acpi_ev_reg_run, ((void*)0),
         &info, ((void*)0));



 if (space_id == ACPI_ADR_SPACE_EC) {
  acpi_ev_orphan_ec_reg_method(node);
 }

 ACPI_DEBUG_PRINT_RAW((ACPI_DB_NAMES,
         "    Executed %u _REG methods for SpaceId %s\n",
         info.reg_run_count,
         acpi_ut_get_region_name(info.space_id)));

 return_VOID;
}
