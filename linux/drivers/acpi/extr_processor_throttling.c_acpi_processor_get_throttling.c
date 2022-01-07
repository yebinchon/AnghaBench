
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int throttling; } ;
struct acpi_processor {int id; TYPE_1__ flags; } ;


 int EINVAL ;
 int ENODEV ;
 int __acpi_processor_get_throttling ;
 int call_on_cpu (int ,int ,struct acpi_processor*,int) ;
 int cpu_online (int ) ;

__attribute__((used)) static int acpi_processor_get_throttling(struct acpi_processor *pr)
{
 if (!pr)
  return -EINVAL;

 if (!pr->flags.throttling)
  return -ENODEV;







 if (!cpu_online(pr->id))
  return -ENODEV;

 return call_on_cpu(pr->id, __acpi_processor_get_throttling, pr, 0);
}
