
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cpu_feat; } ;
struct kvm {TYPE_1__ arch; } ;


 unsigned long KVM_S390_VM_CPU_FEAT_NR_BITS ;
 int WARN_ON_ONCE (int) ;
 int test_bit_inv (unsigned long,int ) ;

__attribute__((used)) static inline int test_kvm_cpu_feat(struct kvm *kvm, unsigned long nr)
{
 WARN_ON_ONCE(nr >= KVM_S390_VM_CPU_FEAT_NR_BITS);
 return test_bit_inv(nr, kvm->arch.cpu_feat);
}
