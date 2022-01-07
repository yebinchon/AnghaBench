
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long MIPS_ENTRYHI_ASID ;
 unsigned long read_c0_entryhi () ;
 unsigned long read_c0_pagemask () ;
 int tlb_write_indexed () ;
 int write_c0_entryhi (unsigned long) ;
 int write_c0_entrylo0 (unsigned long) ;
 int write_c0_entrylo1 (unsigned long) ;
 int write_c0_index (int) ;
 int write_c0_pagemask (unsigned long) ;

__attribute__((used)) static void mod_wired_entry(int entry, unsigned long entrylo0,
  unsigned long entrylo1, unsigned long entryhi,
  unsigned long pagemask)
{
 unsigned long old_pagemask;
 unsigned long old_ctx;


 old_ctx = read_c0_entryhi() & MIPS_ENTRYHI_ASID;
 old_pagemask = read_c0_pagemask();
 write_c0_index(entry);
 write_c0_pagemask(pagemask);
 write_c0_entryhi(entryhi);
 write_c0_entrylo0(entrylo0);
 write_c0_entrylo1(entrylo1);
 tlb_write_indexed();
 write_c0_entryhi(old_ctx);
 write_c0_pagemask(old_pagemask);
}
