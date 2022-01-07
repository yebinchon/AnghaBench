
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cpuid_nent; struct kvm_cpuid_entry2* cpuid_entries; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_cpuid_entry2 {scalar_t__ function; int flags; } ;


 int KVM_CPUID_FLAG_STATE_READ_NEXT ;

__attribute__((used)) static int move_to_next_stateful_cpuid_entry(struct kvm_vcpu *vcpu, int i)
{
 struct kvm_cpuid_entry2 *e = &vcpu->arch.cpuid_entries[i];
 struct kvm_cpuid_entry2 *ej;
 int j = i;
 int nent = vcpu->arch.cpuid_nent;

 e->flags &= ~KVM_CPUID_FLAG_STATE_READ_NEXT;

 do {
  j = (j + 1) % nent;
  ej = &vcpu->arch.cpuid_entries[j];
 } while (ej->function != e->function);

 ej->flags |= KVM_CPUID_FLAG_STATE_READ_NEXT;

 return j;
}
