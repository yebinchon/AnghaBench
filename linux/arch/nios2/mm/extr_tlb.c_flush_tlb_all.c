
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int tlb_num_lines; unsigned int tlb_num_ways; } ;


 int CTL_PTEADDR ;
 int CTL_TLBACC ;
 int CTL_TLBMISC ;
 scalar_t__ PAGE_SIZE ;
 unsigned long TLBMISC_WE ;
 int WRCTL (int ,unsigned long) ;
 TYPE_1__ cpuinfo ;
 int get_misc_and_pid (unsigned long*,unsigned long*) ;
 unsigned long pteaddr_invalid (unsigned long) ;

void flush_tlb_all(void)
{
 unsigned long addr = 0;
 unsigned int line;
 unsigned int way;
 unsigned long org_misc, pid_misc;


 get_misc_and_pid(&org_misc, &pid_misc);


 WRCTL(CTL_TLBMISC, TLBMISC_WE);



 for (line = 0; line < cpuinfo.tlb_num_lines; line++) {
  WRCTL(CTL_PTEADDR, pteaddr_invalid(addr));
  for (way = 0; way < cpuinfo.tlb_num_ways; way++)
   WRCTL(CTL_TLBACC, 0);

  addr += PAGE_SIZE;
 }


 WRCTL(CTL_TLBMISC, org_misc);
}
