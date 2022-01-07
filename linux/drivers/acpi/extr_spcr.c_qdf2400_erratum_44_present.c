
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_table_header {int oem_revision; int oem_table_id; int oem_id; } ;


 int ACPI_OEM_ID_SIZE ;
 int ACPI_OEM_TABLE_ID_SIZE ;
 scalar_t__ memcmp (int ,char*,int ) ;

__attribute__((used)) static bool qdf2400_erratum_44_present(struct acpi_table_header *h)
{
 if (memcmp(h->oem_id, "QCOM  ", ACPI_OEM_ID_SIZE))
  return 0;

 if (!memcmp(h->oem_table_id, "QDF2432 ", ACPI_OEM_TABLE_ID_SIZE))
  return 1;

 if (!memcmp(h->oem_table_id, "QDF2400 ", ACPI_OEM_TABLE_ID_SIZE) &&
   h->oem_revision == 1)
  return 1;

 return 0;
}
