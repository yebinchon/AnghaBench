
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apei_resources {int dummy; } ;


 int acpi_nvs_for_each_region (int ,struct apei_resources*) ;
 int apei_get_res_callback ;

__attribute__((used)) static int apei_get_nvs_resources(struct apei_resources *resources)
{
 return acpi_nvs_for_each_region(apei_get_res_callback, resources);
}
