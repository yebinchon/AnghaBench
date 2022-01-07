
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int unique_id; } ;
struct acpi_device {TYPE_1__ pnp; } ;
struct TYPE_9__ {TYPE_3__* dmi_ids; int cpu_ids; int uid; int hid; } ;
struct TYPE_8__ {TYPE_2__* matches; } ;
struct TYPE_7__ {scalar_t__ slot; } ;


 unsigned int ARRAY_SIZE (TYPE_4__*) ;
 scalar_t__ acpi_match_device_ids (struct acpi_device*,int ) ;
 TYPE_4__* always_present_ids ;
 int dmi_check_system (TYPE_3__*) ;
 scalar_t__ strcmp (int ,int ) ;
 int x86_match_cpu (int ) ;

bool acpi_device_always_present(struct acpi_device *adev)
{
 bool ret = 0;
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(always_present_ids); i++) {
  if (acpi_match_device_ids(adev, always_present_ids[i].hid))
   continue;

  if (!adev->pnp.unique_id ||
      strcmp(adev->pnp.unique_id, always_present_ids[i].uid))
   continue;

  if (!x86_match_cpu(always_present_ids[i].cpu_ids))
   continue;

  if (always_present_ids[i].dmi_ids[0].matches[0].slot &&
      !dmi_check_system(always_present_ids[i].dmi_ids))
   continue;

  ret = 1;
  break;
 }

 return ret;
}
