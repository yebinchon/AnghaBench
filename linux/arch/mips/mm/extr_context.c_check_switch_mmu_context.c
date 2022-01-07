
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct mm_struct {int pgd; } ;
struct TYPE_2__ {int asid_cache; } ;


 int READ_ONCE (int ) ;
 int TLBMISS_HANDLER_SETUP_PGD (int ) ;
 int WRITE_ONCE (int ,int) ;
 int asid_versions_eq (unsigned int,int,int ) ;
 int atomic64_read (int *) ;
 int boot_cpu_data ;
 int check_mmu_context (struct mm_struct*) ;
 int cmpxchg_relaxed (int *,int,int) ;
 int cpu_asid (unsigned int,struct mm_struct*) ;
 int cpu_asid_mask (int *) ;
 int cpu_context (unsigned int,struct mm_struct*) ;
 TYPE_1__* cpu_data ;
 int cpu_has_mmid ;
 scalar_t__ cpu_has_shared_ftlb_entries ;
 scalar_t__ cpu_has_vtag_icache ;
 int cpu_mmid_lock ;
 int * cpu_sibling_map ;
 int cpumask_clear_cpu (unsigned int,int *) ;
 scalar_t__ cpumask_intersects (int *,int *) ;
 scalar_t__ cpumask_test_cpu (unsigned int,int *) ;
 int flush_icache_all () ;
 int get_new_mmid (struct mm_struct*) ;
 int ginvt_mmid () ;
 int local_flush_tlb_all () ;
 int mmid_version ;
 int mtc0_tlbw_hazard () ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int smp_processor_id () ;
 int sync_ginv () ;
 int tlb_flush_pending ;
 int write_c0_entryhi (int ) ;
 int write_c0_memorymapid (int) ;

void check_switch_mmu_context(struct mm_struct *mm)
{
 unsigned int cpu = smp_processor_id();
 u64 ctx, old_active_mmid;
 unsigned long flags;

 if (!cpu_has_mmid) {
  check_mmu_context(mm);
  write_c0_entryhi(cpu_asid(cpu, mm));
  goto setup_pgd;
 }
 ctx = cpu_context(cpu, mm);
 old_active_mmid = READ_ONCE(cpu_data[cpu].asid_cache);
 if (!old_active_mmid ||
     !asid_versions_eq(cpu, ctx, atomic64_read(&mmid_version)) ||
     !cmpxchg_relaxed(&cpu_data[cpu].asid_cache, old_active_mmid, ctx)) {
  raw_spin_lock_irqsave(&cpu_mmid_lock, flags);

  ctx = cpu_context(cpu, mm);
  if (!asid_versions_eq(cpu, ctx, atomic64_read(&mmid_version)))
   ctx = get_new_mmid(mm);

  WRITE_ONCE(cpu_data[cpu].asid_cache, ctx);
  raw_spin_unlock_irqrestore(&cpu_mmid_lock, flags);
 }






 if (cpumask_test_cpu(cpu, &tlb_flush_pending)) {
  if (cpu_has_vtag_icache)
   flush_icache_all();
  local_flush_tlb_all();
  cpumask_clear_cpu(cpu, &tlb_flush_pending);
 }

 write_c0_memorymapid(ctx & cpu_asid_mask(&boot_cpu_data));
setup_pgd:
 TLBMISS_HANDLER_SETUP_PGD(mm->pgd);
}
