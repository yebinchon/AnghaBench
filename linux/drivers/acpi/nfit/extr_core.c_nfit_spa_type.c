
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_nfit_system_address {int range_guid; } ;
typedef int guid_t ;


 int NFIT_UUID_MAX ;
 scalar_t__ guid_equal (int ,int *) ;
 int to_nfit_uuid (int) ;

int nfit_spa_type(struct acpi_nfit_system_address *spa)
{
 int i;

 for (i = 0; i < NFIT_UUID_MAX; i++)
  if (guid_equal(to_nfit_uuid(i), (guid_t *)&spa->range_guid))
   return i;
 return -1;
}
