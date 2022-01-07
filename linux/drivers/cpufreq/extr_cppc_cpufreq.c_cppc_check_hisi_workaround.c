
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct acpi_table_header {scalar_t__ oem_revision; int oem_table_id; int oem_id; } ;
typedef int acpi_status ;
struct TYPE_3__ {scalar_t__ oem_revision; int oem_table_id; int oem_id; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_OEM_ID_SIZE ;
 int ACPI_OEM_TABLE_ID_SIZE ;
 int ACPI_SIG_PCCT ;
 int AE_OK ;
 int ARRAY_SIZE (TYPE_1__*) ;
 int acpi_get_table (int ,int ,struct acpi_table_header**) ;
 int apply_hisi_workaround ;
 int memcmp (int ,int ,int ) ;
 TYPE_1__* wa_info ;

__attribute__((used)) static void cppc_check_hisi_workaround(void)
{
 struct acpi_table_header *tbl;
 acpi_status status = AE_OK;
 int i;

 status = acpi_get_table(ACPI_SIG_PCCT, 0, &tbl);
 if (ACPI_FAILURE(status) || !tbl)
  return;

 for (i = 0; i < ARRAY_SIZE(wa_info); i++) {
  if (!memcmp(wa_info[i].oem_id, tbl->oem_id, ACPI_OEM_ID_SIZE) &&
      !memcmp(wa_info[i].oem_table_id, tbl->oem_table_id, ACPI_OEM_TABLE_ID_SIZE) &&
      wa_info[i].oem_revision == tbl->oem_revision)
   apply_hisi_workaround = 1;
 }
}
