
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* shared; } ;
struct kvm_vcpu {int kvm; TYPE_2__ arch; } ;
struct kvm_book3e_206_tlb_entry {int dummy; } ;
typedef int gpa_t ;
struct TYPE_3__ {int msr; } ;


 int MSR_IS ;
 int PAGE_SHIFT ;
 int get_tlb_raddr (struct kvm_book3e_206_tlb_entry const*) ;
 int get_tlb_ts (struct kvm_book3e_206_tlb_entry const*) ;
 int get_tlb_v (struct kvm_book3e_206_tlb_entry const*) ;
 int gfn_to_memslot (int ,int) ;

__attribute__((used)) static inline int tlbe_is_host_safe(const struct kvm_vcpu *vcpu,
   const struct kvm_book3e_206_tlb_entry *tlbe)
{
 gpa_t gpa;

 if (!get_tlb_v(tlbe))
  return 0;




 if (get_tlb_ts(tlbe) != !!(vcpu->arch.shared->msr & MSR_IS))
  return 0;


 gpa = get_tlb_raddr(tlbe);
 if (!gfn_to_memslot(vcpu->kvm, gpa >> PAGE_SHIFT))

  return 0;

 return 1;
}
