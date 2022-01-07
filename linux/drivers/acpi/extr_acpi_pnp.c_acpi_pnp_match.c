
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device_id {scalar_t__* id; } ;


 struct acpi_device_id* acpi_pnp_device_ids ;
 scalar_t__ matching_id (char const*,char*) ;

__attribute__((used)) static bool acpi_pnp_match(const char *idstr, const struct acpi_device_id **matchid)
{
 const struct acpi_device_id *devid;

 for (devid = acpi_pnp_device_ids; devid->id[0]; devid++)
  if (matching_id(idstr, (char *)devid->id)) {
   if (matchid)
    *matchid = devid;

   return 1;
  }

 return 0;
}
