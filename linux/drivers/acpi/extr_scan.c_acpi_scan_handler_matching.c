
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_scan_handler {int (* match ) (char const*,struct acpi_device_id const**) ;struct acpi_device_id* ids; } ;
struct acpi_device_id {scalar_t__* id; } ;


 int strcmp (char*,char const*) ;
 int stub1 (char const*,struct acpi_device_id const**) ;

__attribute__((used)) static bool acpi_scan_handler_matching(struct acpi_scan_handler *handler,
           const char *idstr,
           const struct acpi_device_id **matchid)
{
 const struct acpi_device_id *devid;

 if (handler->match)
  return handler->match(idstr, matchid);

 for (devid = handler->ids; devid->id[0]; devid++)
  if (!strcmp((char *)devid->id, idstr)) {
   if (matchid)
    *matchid = devid;

   return 1;
  }

 return 0;
}
