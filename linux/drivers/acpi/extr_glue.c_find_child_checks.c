
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int platform_id; } ;
struct TYPE_3__ {TYPE_2__ type; } ;
struct acpi_device {TYPE_1__ pnp; int children; int handle; } ;
typedef scalar_t__ acpi_status ;


 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 unsigned long long ACPI_STA_DEVICE_ENABLED ;
 scalar_t__ AE_NOT_FOUND ;
 int ENODEV ;
 int FIND_CHILD_MAX_SCORE ;
 int FIND_CHILD_MIN_SCORE ;
 scalar_t__ acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 scalar_t__ list_empty (int *) ;

__attribute__((used)) static int find_child_checks(struct acpi_device *adev, bool check_children)
{
 bool sta_present = 1;
 unsigned long long sta;
 acpi_status status;

 status = acpi_evaluate_integer(adev->handle, "_STA", ((void*)0), &sta);
 if (status == AE_NOT_FOUND)
  sta_present = 0;
 else if (ACPI_FAILURE(status) || !(sta & ACPI_STA_DEVICE_ENABLED))
  return -ENODEV;

 if (check_children && list_empty(&adev->children))
  return -ENODEV;
 return sta_present && !adev->pnp.type.platform_id ?
   FIND_CHILD_MAX_SCORE : FIND_CHILD_MIN_SCORE;
}
