
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_table_header {int oem_table_id; int signature; } ;
struct acpi_namespace_node {int dummy; } ;
struct acpi_init_walk_info {int op_region_count; int method_count; int serialized_method_count; int non_serial_method_count; int serial_method_count; int device_count; int object_count; int table_index; int owner_id; } ;
typedef int acpi_status ;
typedef int acpi_owner_id ;


 scalar_t__ ACPI_COMPARE_NAMESEG (int ,int ) ;
 int ACPI_DB_DISPATCH ;
 int ACPI_DB_INIT ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_DEBUG_PRINT_RAW (int ) ;
 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_NS_WALK_NO_UNLOCK ;
 int ACPI_SIG_DSDT ;
 int ACPI_TYPE_ANY ;
 int ACPI_UINT32_MAX ;
 int AE_INFO ;
 int AE_OK ;
 int acpi_ds_init_one_object ;
 int acpi_get_table_by_index (int ,struct acpi_table_header**) ;
 int acpi_ns_walk_namespace (int ,struct acpi_namespace_node*,int ,int ,int ,int *,struct acpi_init_walk_info*,int *) ;
 int acpi_tb_get_owner_id (int ,int *) ;
 int ds_initialize_objects ;
 int memset (struct acpi_init_walk_info*,int ,int) ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ds_initialize_objects(u32 table_index,
      struct acpi_namespace_node *start_node)
{
 acpi_status status;
 struct acpi_init_walk_info info;
 struct acpi_table_header *table;
 acpi_owner_id owner_id;

 ACPI_FUNCTION_TRACE(ds_initialize_objects);

 status = acpi_tb_get_owner_id(table_index, &owner_id);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }

 ACPI_DEBUG_PRINT((ACPI_DB_DISPATCH,
     "**** Starting initialization of namespace objects ****\n"));



 memset(&info, 0, sizeof(struct acpi_init_walk_info));

 info.owner_id = owner_id;
 info.table_index = table_index;







 status =
     acpi_ns_walk_namespace(ACPI_TYPE_ANY, start_node, ACPI_UINT32_MAX,
       ACPI_NS_WALK_NO_UNLOCK,
       acpi_ds_init_one_object, ((void*)0), &info, ((void*)0));
 if (ACPI_FAILURE(status)) {
  ACPI_EXCEPTION((AE_INFO, status, "During WalkNamespace"));
 }

 status = acpi_get_table_by_index(table_index, &table);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }



 if (ACPI_COMPARE_NAMESEG(table->signature, ACPI_SIG_DSDT)) {
  ACPI_DEBUG_PRINT_RAW((ACPI_DB_INIT,
          "\nACPI table initialization:\n"));
 }



 ACPI_DEBUG_PRINT_RAW((ACPI_DB_INIT,
         "Table [%4.4s: %-8.8s] (id %.2X) - %4u Objects with %3u Devices, "
         "%3u Regions, %4u Methods (%u/%u/%u Serial/Non/Cvt)\n",
         table->signature, table->oem_table_id, owner_id,
         info.object_count, info.device_count,
         info.op_region_count, info.method_count,
         info.serial_method_count,
         info.non_serial_method_count,
         info.serialized_method_count));

 ACPI_DEBUG_PRINT((ACPI_DB_DISPATCH, "%u Methods, %u Regions\n",
     info.method_count, info.op_region_count));

 return_ACPI_STATUS(AE_OK);
}
