
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_3__ {int state_count; int state; } ;
struct TYPE_4__ {int throttling; } ;
struct acpi_processor {int throttling_platform_limit; TYPE_1__ throttling; TYPE_2__ flags; } ;


 int EINVAL ;
 int ENODEV ;
 int EPERM ;
 int acpi_get_throttling_value (struct acpi_processor*,int,scalar_t__*) ;
 int acpi_write_throttling_state (struct acpi_processor*,scalar_t__) ;

__attribute__((used)) static int acpi_processor_set_throttling_ptc(struct acpi_processor *pr,
          int state, bool force)
{
 int ret;
 u64 value;

 if (!pr)
  return -EINVAL;

 if ((state < 0) || (state > (pr->throttling.state_count - 1)))
  return -EINVAL;

 if (!pr->flags.throttling)
  return -ENODEV;

 if (!force && (state == pr->throttling.state))
  return 0;

 if (state < pr->throttling_platform_limit)
  return -EPERM;

 value = 0;
 ret = acpi_get_throttling_value(pr, state, &value);
 if (ret >= 0) {
  acpi_write_throttling_state(pr, value);
  pr->throttling.state = state;
 }

 return 0;
}
