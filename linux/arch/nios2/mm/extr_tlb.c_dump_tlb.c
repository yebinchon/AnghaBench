
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int tlb_num_lines; } ;


 TYPE_1__ cpuinfo ;
 int dump_tlb_line (unsigned int) ;

void dump_tlb(void)
{
 unsigned int i;

 for (i = 0; i < cpuinfo.tlb_num_lines; i++)
  dump_tlb_line(i);
}
