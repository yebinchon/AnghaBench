
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct acpi_device {int dummy; } ;
struct acpi_dev_match_info {char const* uid; int hrv; TYPE_1__* hid; } ;
typedef int s64 ;
struct TYPE_2__ {int id; } ;


 int acpi_bus_type ;
 int acpi_dev_match_cb ;
 struct device* bus_find_device (int *,int *,struct acpi_dev_match_info*,int ) ;
 int strlcpy (int ,char const*,int) ;
 struct acpi_device* to_acpi_device (struct device*) ;

struct acpi_device *
acpi_dev_get_first_match_dev(const char *hid, const char *uid, s64 hrv)
{
 struct acpi_dev_match_info match = {};
 struct device *dev;

 strlcpy(match.hid[0].id, hid, sizeof(match.hid[0].id));
 match.uid = uid;
 match.hrv = hrv;

 dev = bus_find_device(&acpi_bus_type, ((void*)0), &match, acpi_dev_match_cb);
 return dev ? to_acpi_device(dev) : ((void*)0);
}
