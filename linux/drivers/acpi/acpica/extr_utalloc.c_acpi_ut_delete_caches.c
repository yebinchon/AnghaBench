
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;


 int ACPI_UINT32_MAX ;
 int AE_OK ;
 int acpi_db_display_statistics (char*) ;
 int * acpi_gbl_comment_addr_cache ;
 scalar_t__ acpi_gbl_display_final_mem_stats ;
 int * acpi_gbl_file_cache ;
 int * acpi_gbl_global_list ;
 int * acpi_gbl_namespace_cache ;
 int * acpi_gbl_ns_node_list ;
 int * acpi_gbl_operand_cache ;
 int * acpi_gbl_ps_node_cache ;
 int * acpi_gbl_ps_node_ext_cache ;
 int * acpi_gbl_reg_comment_cache ;
 int * acpi_gbl_state_cache ;
 int acpi_os_delete_cache (int *) ;
 int acpi_os_free (int *) ;
 int acpi_ut_dump_allocations (int ,int *) ;
 int strcpy (char*,char*) ;

acpi_status acpi_ut_delete_caches(void)
{
 (void)acpi_os_delete_cache(acpi_gbl_namespace_cache);
 acpi_gbl_namespace_cache = ((void*)0);

 (void)acpi_os_delete_cache(acpi_gbl_state_cache);
 acpi_gbl_state_cache = ((void*)0);

 (void)acpi_os_delete_cache(acpi_gbl_operand_cache);
 acpi_gbl_operand_cache = ((void*)0);

 (void)acpi_os_delete_cache(acpi_gbl_ps_node_cache);
 acpi_gbl_ps_node_cache = ((void*)0);

 (void)acpi_os_delete_cache(acpi_gbl_ps_node_ext_cache);
 acpi_gbl_ps_node_ext_cache = ((void*)0);
 return (AE_OK);
}
