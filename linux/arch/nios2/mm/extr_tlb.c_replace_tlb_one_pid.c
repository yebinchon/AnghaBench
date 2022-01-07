
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int tlb_num_ways; } ;


 int CTL_PTEADDR ;
 int CTL_TLBACC ;
 int CTL_TLBMISC ;
 unsigned long PAGE_SHIFT ;
 unsigned long RDCTL (int ) ;
 unsigned long TLBMISC_PID_MASK ;
 unsigned long TLBMISC_PID_SHIFT ;
 unsigned int TLBMISC_RD ;
 unsigned int TLBMISC_WAY_SHIFT ;
 unsigned long TLBMISC_WE ;
 int WRCTL (int ,unsigned long) ;
 TYPE_1__ cpuinfo ;
 int get_misc_and_pid (unsigned long*,unsigned long*) ;
 unsigned long pteaddr_invalid (unsigned long) ;

__attribute__((used)) static void replace_tlb_one_pid(unsigned long addr, unsigned long mmu_pid, unsigned long tlbacc)
{
 unsigned int way;
 unsigned long org_misc, pid_misc;


 get_misc_and_pid(&org_misc, &pid_misc);

 WRCTL(CTL_PTEADDR, (addr >> PAGE_SHIFT) << 2);

 for (way = 0; way < cpuinfo.tlb_num_ways; way++) {
  unsigned long pteaddr;
  unsigned long tlbmisc;
  unsigned long pid;

  tlbmisc = TLBMISC_RD | (way << TLBMISC_WAY_SHIFT);
  WRCTL(CTL_TLBMISC, tlbmisc);

  pteaddr = RDCTL(CTL_PTEADDR);
  if (((pteaddr >> 2) & 0xfffff) != (addr >> PAGE_SHIFT))
   continue;

  tlbmisc = RDCTL(CTL_TLBMISC);
  pid = (tlbmisc >> TLBMISC_PID_SHIFT) & TLBMISC_PID_MASK;
  if (pid != mmu_pid)
   continue;

  tlbmisc = (mmu_pid << TLBMISC_PID_SHIFT) | TLBMISC_WE |
     (way << TLBMISC_WAY_SHIFT);
  WRCTL(CTL_TLBMISC, tlbmisc);
  if (tlbacc == 0)
   WRCTL(CTL_PTEADDR, pteaddr_invalid(addr));
  WRCTL(CTL_TLBACC, tlbacc);




  break;
 }

 WRCTL(CTL_TLBMISC, org_misc);
}
