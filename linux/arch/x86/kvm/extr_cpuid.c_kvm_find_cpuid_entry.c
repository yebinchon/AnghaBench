
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int cpuid_nent; struct kvm_cpuid_entry2* cpuid_entries; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_cpuid_entry2 {int flags; } ;


 int KVM_CPUID_FLAG_STATEFUL_FUNC ;
 scalar_t__ is_matching_cpuid_entry (struct kvm_cpuid_entry2*,int ,int ) ;
 int move_to_next_stateful_cpuid_entry (struct kvm_vcpu*,int) ;

struct kvm_cpuid_entry2 *kvm_find_cpuid_entry(struct kvm_vcpu *vcpu,
           u32 function, u32 index)
{
 int i;
 struct kvm_cpuid_entry2 *best = ((void*)0);

 for (i = 0; i < vcpu->arch.cpuid_nent; ++i) {
  struct kvm_cpuid_entry2 *e;

  e = &vcpu->arch.cpuid_entries[i];
  if (is_matching_cpuid_entry(e, function, index)) {
   if (e->flags & KVM_CPUID_FLAG_STATEFUL_FUNC)
    move_to_next_stateful_cpuid_entry(vcpu, i);
   best = e;
   break;
  }
 }
 return best;
}
