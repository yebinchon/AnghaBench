
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_7__ {int ctx_id; } ;
struct mm_struct {TYPE_2__ context; int pgd; } ;
struct TYPE_10__ {TYPE_3__* ctxs; int next_asid; int loaded_mm_asid; int last_user_mm_ibpb; int loaded_mm; } ;
struct TYPE_6__ {int tlb_gen; } ;
struct TYPE_9__ {TYPE_1__ context; } ;
struct TYPE_8__ {int ctx_id; int tlb_gen; } ;


 unsigned long CR3_ADDR_MASK ;
 int LAST_USER_MM_IBPB ;
 int TLB_NR_DYN_ASIDS ;
 int WARN_ON (int) ;
 int X86_CR4_PCIDE ;
 int X86_FEATURE_PCID ;
 unsigned long __pa (int ) ;
 unsigned long __read_cr3 () ;
 int atomic64_read (int *) ;
 scalar_t__ boot_cpu_has (int ) ;
 int build_cr3 (int ,int ) ;
 TYPE_5__ cpu_tlbstate ;
 int cr4_read_shadow () ;
 TYPE_4__ init_mm ;
 struct mm_struct* this_cpu_read (int ) ;
 int this_cpu_write (int ,int) ;
 int write_cr3 (int ) ;

void initialize_tlbstate_and_flush(void)
{
 int i;
 struct mm_struct *mm = this_cpu_read(cpu_tlbstate.loaded_mm);
 u64 tlb_gen = atomic64_read(&init_mm.context.tlb_gen);
 unsigned long cr3 = __read_cr3();


 WARN_ON((cr3 & CR3_ADDR_MASK) != __pa(mm->pgd));






 WARN_ON(boot_cpu_has(X86_FEATURE_PCID) &&
  !(cr4_read_shadow() & X86_CR4_PCIDE));


 write_cr3(build_cr3(mm->pgd, 0));


 this_cpu_write(cpu_tlbstate.last_user_mm_ibpb, LAST_USER_MM_IBPB);
 this_cpu_write(cpu_tlbstate.loaded_mm_asid, 0);
 this_cpu_write(cpu_tlbstate.next_asid, 1);
 this_cpu_write(cpu_tlbstate.ctxs[0].ctx_id, mm->context.ctx_id);
 this_cpu_write(cpu_tlbstate.ctxs[0].tlb_gen, tlb_gen);

 for (i = 1; i < TLB_NR_DYN_ASIDS; i++)
  this_cpu_write(cpu_tlbstate.ctxs[i].ctx_id, 0);
}
