
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {int unique_id; } ;
struct acpi_device {int handle; TYPE_1__ pnp; } ;
struct acpi_dev_match_info {int hrv; scalar_t__ uid; int hid; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 scalar_t__ acpi_match_device_ids (struct acpi_device*,int ) ;
 scalar_t__ strcmp (int ,scalar_t__) ;
 struct acpi_device* to_acpi_device (struct device*) ;

__attribute__((used)) static int acpi_dev_match_cb(struct device *dev, const void *data)
{
 struct acpi_device *adev = to_acpi_device(dev);
 const struct acpi_dev_match_info *match = data;
 unsigned long long hrv;
 acpi_status status;

 if (acpi_match_device_ids(adev, match->hid))
  return 0;

 if (match->uid && (!adev->pnp.unique_id ||
     strcmp(adev->pnp.unique_id, match->uid)))
  return 0;

 if (match->hrv == -1)
  return 1;

 status = acpi_evaluate_integer(adev->handle, "_HRV", ((void*)0), &hrv);
 if (ACPI_FAILURE(status))
  return 0;

 return hrv == match->hrv;
}
