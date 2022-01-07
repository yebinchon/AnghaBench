
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xen_pv_domain () ;

__attribute__((used)) static int xen_madt_oem_check(char *oem_id, char *oem_table_id)
{
 return xen_pv_domain();
}
