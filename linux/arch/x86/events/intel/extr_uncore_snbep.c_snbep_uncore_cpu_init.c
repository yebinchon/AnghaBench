
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ x86_max_cores; } ;
struct TYPE_3__ {scalar_t__ num_boxes; } ;


 TYPE_2__ boot_cpu_data ;
 int snbep_msr_uncores ;
 TYPE_1__ snbep_uncore_cbox ;
 int uncore_msr_uncores ;

void snbep_uncore_cpu_init(void)
{
 if (snbep_uncore_cbox.num_boxes > boot_cpu_data.x86_max_cores)
  snbep_uncore_cbox.num_boxes = boot_cpu_data.x86_max_cores;
 uncore_msr_uncores = snbep_msr_uncores;
}
