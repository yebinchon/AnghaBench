
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef size_t u16 ;
struct TYPE_4__ {scalar_t__ ctx_id; } ;
struct mm_struct {TYPE_1__ context; } ;
struct TYPE_6__ {int next_asid; TYPE_2__* ctxs; int invalidate_other; } ;
struct TYPE_5__ {int tlb_gen; int ctx_id; } ;


 size_t TLB_NR_DYN_ASIDS ;
 int X86_FEATURE_PCID ;
 int clear_asid_other () ;
 TYPE_3__ cpu_tlbstate ;
 int static_cpu_has (int ) ;
 size_t this_cpu_add_return (int ,int) ;
 scalar_t__ this_cpu_read (int ) ;
 int this_cpu_write (int ,int) ;

__attribute__((used)) static void choose_new_asid(struct mm_struct *next, u64 next_tlb_gen,
       u16 *new_asid, bool *need_flush)
{
 u16 asid;

 if (!static_cpu_has(X86_FEATURE_PCID)) {
  *new_asid = 0;
  *need_flush = 1;
  return;
 }

 if (this_cpu_read(cpu_tlbstate.invalidate_other))
  clear_asid_other();

 for (asid = 0; asid < TLB_NR_DYN_ASIDS; asid++) {
  if (this_cpu_read(cpu_tlbstate.ctxs[asid].ctx_id) !=
      next->context.ctx_id)
   continue;

  *new_asid = asid;
  *need_flush = (this_cpu_read(cpu_tlbstate.ctxs[asid].tlb_gen) <
          next_tlb_gen);
  return;
 }





 *new_asid = this_cpu_add_return(cpu_tlbstate.next_asid, 1) - 1;
 if (*new_asid >= TLB_NR_DYN_ASIDS) {
  *new_asid = 0;
  this_cpu_write(cpu_tlbstate.next_asid, 1);
 }
 *need_flush = 1;
}
