
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int entries; int step; int first; int next; int last; } ;
struct TYPE_4__ {int entries; int step; int first; int next; int last; } ;
struct TYPE_6__ {TYPE_2__ itlb; TYPE_1__ dtlb; } ;


 int DTLB_FIXED ;
 int ITLB_FIXED ;
 TYPE_3__* cpu_data ;

int sh64_tlb_init(void)
{

 cpu_data->dtlb.entries = 64;
 cpu_data->dtlb.step = 0x10;

 cpu_data->dtlb.first = DTLB_FIXED | cpu_data->dtlb.step;
 cpu_data->dtlb.next = cpu_data->dtlb.first;

 cpu_data->dtlb.last = DTLB_FIXED |
      ((cpu_data->dtlb.entries - 1) *
       cpu_data->dtlb.step);


 cpu_data->itlb.entries = 64;
 cpu_data->itlb.step = 0x10;

 cpu_data->itlb.first = ITLB_FIXED | cpu_data->itlb.step;
 cpu_data->itlb.next = cpu_data->itlb.first;
 cpu_data->itlb.last = ITLB_FIXED |
      ((cpu_data->itlb.entries - 1) *
       cpu_data->itlb.step);

 return 0;
}
