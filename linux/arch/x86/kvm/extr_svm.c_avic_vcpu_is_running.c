
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vcpu_svm {int * avic_physical_id_cache; } ;
struct kvm_vcpu {int dummy; } ;


 int AVIC_PHYSICAL_ID_ENTRY_IS_RUNNING_MASK ;
 int READ_ONCE (int ) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static inline bool avic_vcpu_is_running(struct kvm_vcpu *vcpu)
{
 struct vcpu_svm *svm = to_svm(vcpu);
 u64 *entry = svm->avic_physical_id_cache;

 if (!entry)
  return 0;

 return (READ_ONCE(*entry) & AVIC_PHYSICAL_ID_ENTRY_IS_RUNNING_MASK);
}
