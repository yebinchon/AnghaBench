
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oem_revision; int oem_table_id; int oem_id; } ;
struct acpi_table_spcr {scalar_t__ interface_type; TYPE_1__ header; } ;


 scalar_t__ ACPI_DBG2_16550_COMPATIBLE ;
 int ACPI_OEM_ID_SIZE ;
 int ACPI_OEM_TABLE_ID_SIZE ;
 scalar_t__ memcmp (int ,char*,int ) ;

__attribute__((used)) static bool xgene_8250_erratum_present(struct acpi_table_spcr *tb)
{
 bool xgene_8250 = 0;

 if (tb->interface_type != ACPI_DBG2_16550_COMPATIBLE)
  return 0;

 if (memcmp(tb->header.oem_id, "APMC0D", ACPI_OEM_ID_SIZE) &&
     memcmp(tb->header.oem_id, "HPE   ", ACPI_OEM_ID_SIZE))
  return 0;

 if (!memcmp(tb->header.oem_table_id, "XGENESPC",
     ACPI_OEM_TABLE_ID_SIZE) && tb->header.oem_revision == 0)
  xgene_8250 = 1;

 if (!memcmp(tb->header.oem_table_id, "ProLiant",
     ACPI_OEM_TABLE_ID_SIZE) && tb->header.oem_revision == 1)
  xgene_8250 = 1;

 return xgene_8250;
}
