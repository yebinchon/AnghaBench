
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct cpuinfo_arc_mmu {int ways; int sets; } ;
struct TYPE_2__ {struct cpuinfo_arc_mmu mmu; } ;


 int ARC_REG_TLBCOMMAND ;
 int ARC_REG_TLBINDEX ;
 int ARC_REG_TLBPD0 ;
 int BUG_ON (int) ;
 unsigned int PAGE_MASK ;
 int SET_WAY_TO_IDX (struct cpuinfo_arc_mmu*,int,int) ;
 int TLBRead ;
 unsigned int _PAGE_PRESENT ;
 int __tlb_entry_erase () ;
 TYPE_1__* cpuinfo_arc700 ;
 int dup_pd_silent ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int min (int,int) ;
 int pr_info (char*,unsigned int,int,int,int) ;
 unsigned int read_aux_reg (int ) ;
 size_t smp_processor_id () ;
 int write_aux_reg (int ,int ) ;

void do_tlb_overlap_fault(unsigned long cause, unsigned long address,
     struct pt_regs *regs)
{
 struct cpuinfo_arc_mmu *mmu = &cpuinfo_arc700[smp_processor_id()].mmu;
 unsigned long flags;
 int set, n_ways = mmu->ways;

 n_ways = min(n_ways, 4);
 BUG_ON(mmu->ways > 4);

 local_irq_save(flags);


 for (set = 0; set < mmu->sets; set++) {

  int is_valid, way;
  unsigned int pd0[4];


  for (way = 0, is_valid = 0; way < n_ways; way++) {
   write_aux_reg(ARC_REG_TLBINDEX,
       SET_WAY_TO_IDX(mmu, set, way));
   write_aux_reg(ARC_REG_TLBCOMMAND, TLBRead);
   pd0[way] = read_aux_reg(ARC_REG_TLBPD0);
   is_valid |= pd0[way] & _PAGE_PRESENT;
   pd0[way] &= PAGE_MASK;
  }


  if (!is_valid)
   continue;


  for (way = 0; way < n_ways - 1; way++) {

   int n;

   if (!pd0[way])
    continue;

   for (n = way + 1; n < n_ways; n++) {
    if (pd0[way] != pd0[n])
     continue;

    if (!dup_pd_silent)
     pr_info("Dup TLB PD0 %08x @ set %d ways %d,%d\n",
      pd0[way], set, way, n);





    pd0[way] = 0;
    write_aux_reg(ARC_REG_TLBINDEX,
      SET_WAY_TO_IDX(mmu, set, way));
    __tlb_entry_erase();
   }
  }
 }

 local_irq_restore(flags);
}
