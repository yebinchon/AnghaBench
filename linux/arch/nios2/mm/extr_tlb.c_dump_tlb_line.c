
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long tlb_num_ways_log2; unsigned int tlb_num_ways; } ;


 int CTL_PTEADDR ;
 int CTL_TLBACC ;
 int CTL_TLBMISC ;
 unsigned long PAGE_SHIFT ;
 unsigned long RDCTL (int ) ;
 unsigned long TLBMISC_PID ;
 unsigned long TLBMISC_PID_MASK ;
 unsigned long TLBMISC_PID_SHIFT ;
 unsigned int TLBMISC_RD ;
 unsigned long TLBMISC_WAY ;
 unsigned int TLBMISC_WAY_SHIFT ;
 int WRCTL (int ,unsigned long) ;
 unsigned long _PAGE_CACHED ;
 unsigned long _PAGE_EXEC ;
 unsigned long _PAGE_GLOBAL ;
 unsigned long _PAGE_READ ;
 unsigned long _PAGE_WRITE ;
 TYPE_1__ cpuinfo ;
 int pr_debug (char*,unsigned int,unsigned long,...) ;

void dump_tlb_line(unsigned long line)
{
 unsigned int way;
 unsigned long org_misc;

 pr_debug("dump tlb-entries for line=%#lx (addr %08lx)\n", line,
  line << (PAGE_SHIFT + cpuinfo.tlb_num_ways_log2));


 org_misc = (RDCTL(CTL_TLBMISC) & (TLBMISC_PID | TLBMISC_WAY));

 WRCTL(CTL_PTEADDR, line << 2);

 for (way = 0; way < cpuinfo.tlb_num_ways; way++) {
  unsigned long pteaddr;
  unsigned long tlbmisc;
  unsigned long tlbacc;

  WRCTL(CTL_TLBMISC, TLBMISC_RD | (way << TLBMISC_WAY_SHIFT));
  pteaddr = RDCTL(CTL_PTEADDR);
  tlbmisc = RDCTL(CTL_TLBMISC);
  tlbacc = RDCTL(CTL_TLBACC);

  if ((tlbacc << PAGE_SHIFT) != 0) {
   pr_debug("-- way:%02x vpn:0x%08lx phys:0x%08lx pid:0x%02lx flags:%c%c%c%c%c\n",
    way,
    (pteaddr << (PAGE_SHIFT-2)),
    (tlbacc << PAGE_SHIFT),
    ((tlbmisc >> TLBMISC_PID_SHIFT) &
    TLBMISC_PID_MASK),
    (tlbacc & _PAGE_READ ? 'r' : '-'),
    (tlbacc & _PAGE_WRITE ? 'w' : '-'),
    (tlbacc & _PAGE_EXEC ? 'x' : '-'),
    (tlbacc & _PAGE_GLOBAL ? 'g' : '-'),
    (tlbacc & _PAGE_CACHED ? 'c' : '-'));
  }
 }

 WRCTL(CTL_TLBMISC, org_misc);
}
