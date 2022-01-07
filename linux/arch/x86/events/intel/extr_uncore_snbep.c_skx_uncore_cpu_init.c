
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_boxes; } ;


 int skx_count_chabox () ;
 int skx_msr_uncores ;
 TYPE_1__ skx_uncore_chabox ;
 int uncore_msr_uncores ;

void skx_uncore_cpu_init(void)
{
 skx_uncore_chabox.num_boxes = skx_count_chabox();
 uncore_msr_uncores = skx_msr_uncores;
}
