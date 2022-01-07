
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_device {int dummy; } ;
struct acpi_processor {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int acpi_processor_setup_cpuidle_cx(struct acpi_processor *pr,
        struct cpuidle_device *dev)
{
 return -EINVAL;
}
