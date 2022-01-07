
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct TYPE_4__ {int invalidate_other; TYPE_1__* ctxs; int loaded_mm_asid; } ;
struct TYPE_3__ {int ctx_id; } ;


 size_t TLB_NR_DYN_ASIDS ;
 int WARN_ON_ONCE (int) ;
 int X86_FEATURE_PTI ;
 TYPE_2__ cpu_tlbstate ;
 int static_cpu_has (int ) ;
 size_t this_cpu_read (int ) ;
 int this_cpu_write (int ,int) ;

__attribute__((used)) static void clear_asid_other(void)
{
 u16 asid;





 if (!static_cpu_has(X86_FEATURE_PTI)) {
  WARN_ON_ONCE(1);
  return;
 }

 for (asid = 0; asid < TLB_NR_DYN_ASIDS; asid++) {

  if (asid == this_cpu_read(cpu_tlbstate.loaded_mm_asid))
   continue;




  this_cpu_write(cpu_tlbstate.ctxs[asid].ctx_id, 0);
 }
 this_cpu_write(cpu_tlbstate.invalidate_other, 0);
}
