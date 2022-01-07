
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int boot_mem_regs_cnt; unsigned long* boot_mem_addr; unsigned long* boot_mem_sz; unsigned long boot_mem_dest_addr; } ;


 TYPE_1__ fw_dump ;
 int pr_debug (char*,unsigned long,unsigned long) ;

__attribute__((used)) static inline unsigned long fadump_relocate(unsigned long paddr)
{
 unsigned long raddr, rstart, rend, rlast, hole_size;
 int i;

 hole_size = 0;
 rlast = 0;
 raddr = paddr;
 for (i = 0; i < fw_dump.boot_mem_regs_cnt; i++) {
  rstart = fw_dump.boot_mem_addr[i];
  rend = rstart + fw_dump.boot_mem_sz[i];
  hole_size += (rstart - rlast);

  if (paddr >= rstart && paddr < rend) {
   raddr += fw_dump.boot_mem_dest_addr - hole_size;
   break;
  }

  rlast = rend;
 }

 pr_debug("vmcoreinfo: paddr = 0x%lx, raddr = 0x%lx\n", paddr, raddr);
 return raddr;
}
