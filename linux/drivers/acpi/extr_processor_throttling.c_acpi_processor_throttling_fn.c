
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_processor_throttling_arg {int force; int target_state; struct acpi_processor* pr; } ;
struct TYPE_2__ {long (* acpi_processor_set_throttling ) (struct acpi_processor*,int ,int ) ;} ;
struct acpi_processor {TYPE_1__ throttling; } ;


 long stub1 (struct acpi_processor*,int ,int ) ;

__attribute__((used)) static long acpi_processor_throttling_fn(void *data)
{
 struct acpi_processor_throttling_arg *arg = data;
 struct acpi_processor *pr = arg->pr;

 return pr->throttling.acpi_processor_set_throttling(pr,
   arg->target_state, arg->force);
}
