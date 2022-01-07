
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vcpu_svm {int * avic_physical_id_cache; } ;
struct kvm_vcpu {int dummy; } ;


 int AVIC_PHYSICAL_ID_ENTRY_IS_RUNNING_MASK ;
 int READ_ONCE (int ) ;
 int WRITE_ONCE (int ,int) ;
 int avic_update_iommu_vcpu_affinity (struct kvm_vcpu*,int,int ) ;
 int kvm_vcpu_apicv_active (struct kvm_vcpu*) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static void avic_vcpu_put(struct kvm_vcpu *vcpu)
{
 u64 entry;
 struct vcpu_svm *svm = to_svm(vcpu);

 if (!kvm_vcpu_apicv_active(vcpu))
  return;

 entry = READ_ONCE(*(svm->avic_physical_id_cache));
 if (entry & AVIC_PHYSICAL_ID_ENTRY_IS_RUNNING_MASK)
  avic_update_iommu_vcpu_affinity(vcpu, -1, 0);

 entry &= ~AVIC_PHYSICAL_ID_ENTRY_IS_RUNNING_MASK;
 WRITE_ONCE(*(svm->avic_physical_id_cache), entry);
}
