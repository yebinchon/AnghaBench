
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int numachip_system ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int numachip1_acpi_madt_oem_check(char *oem_id, char *oem_table_id)
{
 if ((strncmp(oem_id, "NUMASC", 6) != 0) ||
     (strncmp(oem_table_id, "NCONNECT", 8) != 0))
  return 0;

 numachip_system = 1;

 return 1;
}
