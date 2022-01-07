
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_gpe_xrupt_info {struct acpi_gpe_xrupt_info* next; struct acpi_gpe_block_info* gpe_block_list_head; } ;
struct acpi_gpe_walk_info {scalar_t__ count; int gpe_device; struct acpi_gpe_block_info* gpe_block; int execute_by_owner_id; int owner_id; } ;
struct acpi_gpe_block_info {struct acpi_gpe_block_info* next; int node; } ;
typedef int acpi_status ;
typedef int acpi_owner_id ;


 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_INFO (char*) ;
 int ACPI_MTX_EVENTS ;
 int ACPI_NS_WALK_NO_UNLOCK ;
 int ACPI_TYPE_METHOD ;
 int ACPI_UINT32_MAX ;
 int AE_INFO ;
 int AE_OK ;
 int TRUE ;
 int acpi_ev_match_gpe_method ;
 struct acpi_gpe_xrupt_info* acpi_gbl_gpe_xrupt_list_head ;
 int acpi_ns_walk_namespace (int ,int ,int ,int ,int ,int *,struct acpi_gpe_walk_info*,int *) ;
 int acpi_ut_acquire_mutex (int ) ;
 int acpi_ut_release_mutex (int ) ;

void acpi_ev_update_gpes(acpi_owner_id table_owner_id)
{
 struct acpi_gpe_xrupt_info *gpe_xrupt_info;
 struct acpi_gpe_block_info *gpe_block;
 struct acpi_gpe_walk_info walk_info;
 acpi_status status = AE_OK;
 status = acpi_ut_acquire_mutex(ACPI_MTX_EVENTS);
 if (ACPI_FAILURE(status)) {
  return;
 }

 walk_info.count = 0;
 walk_info.owner_id = table_owner_id;
 walk_info.execute_by_owner_id = TRUE;



 gpe_xrupt_info = acpi_gbl_gpe_xrupt_list_head;
 while (gpe_xrupt_info) {



  gpe_block = gpe_xrupt_info->gpe_block_list_head;
  while (gpe_block) {
   walk_info.gpe_block = gpe_block;
   walk_info.gpe_device = gpe_block->node;

   status = acpi_ns_walk_namespace(ACPI_TYPE_METHOD,
       walk_info.gpe_device,
       ACPI_UINT32_MAX,
       ACPI_NS_WALK_NO_UNLOCK,
       acpi_ev_match_gpe_method,
       ((void*)0), &walk_info, ((void*)0));
   if (ACPI_FAILURE(status)) {
    ACPI_EXCEPTION((AE_INFO, status,
      "While decoding _Lxx/_Exx methods"));
   }

   gpe_block = gpe_block->next;
  }

  gpe_xrupt_info = gpe_xrupt_info->next;
 }

 if (walk_info.count) {
  ACPI_INFO(("Enabled %u new GPEs", walk_info.count));
 }

 (void)acpi_ut_release_mutex(ACPI_MTX_EVENTS);
 return;
}
