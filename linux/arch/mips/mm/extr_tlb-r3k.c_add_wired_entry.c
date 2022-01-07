
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BARRIER ;
 unsigned long cpu_asid_mask (int *) ;
 int current_cpu_data ;
 int local_flush_tlb_all () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int printk (char*,unsigned long,unsigned long,...) ;
 scalar_t__ r3k_have_wired_reg ;
 unsigned long read_c0_entryhi () ;
 unsigned long read_c0_pagemask () ;
 unsigned long read_c0_wired () ;
 int tlb_write_indexed () ;
 int write_c0_entryhi (unsigned long) ;
 int write_c0_entrylo0 (unsigned long) ;
 int write_c0_index (unsigned long) ;
 int write_c0_pagemask (unsigned long) ;
 int write_c0_wired (unsigned long) ;

void add_wired_entry(unsigned long entrylo0, unsigned long entrylo1,
       unsigned long entryhi, unsigned long pagemask)
{
 unsigned long asid_mask = cpu_asid_mask(&current_cpu_data);
 unsigned long flags;
 unsigned long old_ctx;
 static unsigned long wired = 0;

 if (r3k_have_wired_reg) {
  unsigned long old_pagemask;
  unsigned long w;






  local_irq_save(flags);

  old_ctx = read_c0_entryhi() & asid_mask;
  old_pagemask = read_c0_pagemask();
  w = read_c0_wired();
  write_c0_wired(w + 1);
  write_c0_index(w << 8);
  write_c0_pagemask(pagemask);
  write_c0_entryhi(entryhi);
  write_c0_entrylo0(entrylo0);
  BARRIER;
  tlb_write_indexed();

  write_c0_entryhi(old_ctx);
  write_c0_pagemask(old_pagemask);
  local_flush_tlb_all();
  local_irq_restore(flags);

 } else if (wired < 8) {





  local_irq_save(flags);
  old_ctx = read_c0_entryhi() & asid_mask;
  write_c0_entrylo0(entrylo0);
  write_c0_entryhi(entryhi);
  write_c0_index(wired);
  wired++;
  tlb_write_indexed();
  write_c0_entryhi(old_ctx);
  local_flush_tlb_all();
  local_irq_restore(flags);
 }
}
