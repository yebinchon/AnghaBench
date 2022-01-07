
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct acpi_hest_generic_status {scalar_t__ block_status; } ;


 scalar_t__ ELOG_ENTRY_ADDR (int) ;
 int ELOG_ENTRY_DATA (int) ;
 int ELOG_ENTRY_VALID ;
 int ELOG_IDX (int,int) ;
 int EXT_ELOG_ENTRY_MASK ;
 int WARN_ON (int) ;

__attribute__((used)) static struct acpi_hest_generic_status *extlog_elog_entry_check(int cpu, int bank)
{
 int idx;
 u64 data;
 struct acpi_hest_generic_status *estatus;

 WARN_ON(cpu < 0);
 idx = ELOG_IDX(cpu, bank);
 data = ELOG_ENTRY_DATA(idx);
 if ((data & ELOG_ENTRY_VALID) == 0)
  return ((void*)0);

 data &= EXT_ELOG_ENTRY_MASK;
 estatus = (struct acpi_hest_generic_status *)ELOG_ENTRY_ADDR(data);


 if (estatus->block_status == 0)
  return ((void*)0);

 return estatus;
}
