
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ACPI_ROOT_OBJECT ;
 int ACPI_TYPE_ANY ;
 int ACPI_TYPE_NS_NODE_MAX ;
 int ACPI_UINT32_MAX ;
 int FALSE ;
 int acpi_db_classify_one_object ;
 scalar_t__* acpi_gbl_node_type_count ;
 scalar_t__ acpi_gbl_num_nodes ;
 scalar_t__ acpi_gbl_num_objects ;
 scalar_t__* acpi_gbl_obj_type_count ;
 scalar_t__ acpi_gbl_obj_type_count_misc ;
 int acpi_ns_walk_namespace (int ,int ,int ,int ,int ,int *,int *,int *) ;

__attribute__((used)) static void acpi_db_count_namespace_objects(void)
{
 u32 i;

 acpi_gbl_num_nodes = 0;
 acpi_gbl_num_objects = 0;

 acpi_gbl_obj_type_count_misc = 0;
 for (i = 0; i < (ACPI_TYPE_NS_NODE_MAX - 1); i++) {
  acpi_gbl_obj_type_count[i] = 0;
  acpi_gbl_node_type_count[i] = 0;
 }

 (void)acpi_ns_walk_namespace(ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
         ACPI_UINT32_MAX, FALSE,
         acpi_db_classify_one_object, ((void*)0), ((void*)0),
         ((void*)0));
}
