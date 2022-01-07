
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlbe_ref {int flags; int pfn; } ;


 int E500_TLB_VALID ;
 int trace_kvm_booke206_ref_release (int ,int) ;

__attribute__((used)) static inline void kvmppc_e500_ref_release(struct tlbe_ref *ref)
{
 if (ref->flags & E500_TLB_VALID) {

  trace_kvm_booke206_ref_release(ref->pfn, ref->flags);
  ref->flags = 0;
 }
}
