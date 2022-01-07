
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vcpu_svm {scalar_t__ avic_is_running; int * avic_physical_id_cache; } ;
struct kvm_vcpu {int dummy; } ;


 int AVIC_PHYSICAL_ID_ENTRY_HOST_PHYSICAL_ID_MASK ;
 int AVIC_PHYSICAL_ID_ENTRY_IS_RUNNING_MASK ;
 int READ_ONCE (int ) ;
 scalar_t__ WARN_ON (int) ;
 int WRITE_ONCE (int ,int) ;
 int avic_update_iommu_vcpu_affinity (struct kvm_vcpu*,int,scalar_t__) ;
 int kvm_cpu_get_apicid (int) ;
 int kvm_vcpu_apicv_active (struct kvm_vcpu*) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static void avic_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
{
 u64 entry;

 int h_physical_id = kvm_cpu_get_apicid(cpu);
 struct vcpu_svm *svm = to_svm(vcpu);

 if (!kvm_vcpu_apicv_active(vcpu))
  return;





 if (WARN_ON(h_physical_id > AVIC_PHYSICAL_ID_ENTRY_HOST_PHYSICAL_ID_MASK))
  return;

 entry = READ_ONCE(*(svm->avic_physical_id_cache));
 WARN_ON(entry & AVIC_PHYSICAL_ID_ENTRY_IS_RUNNING_MASK);

 entry &= ~AVIC_PHYSICAL_ID_ENTRY_HOST_PHYSICAL_ID_MASK;
 entry |= (h_physical_id & AVIC_PHYSICAL_ID_ENTRY_HOST_PHYSICAL_ID_MASK);

 entry &= ~AVIC_PHYSICAL_ID_ENTRY_IS_RUNNING_MASK;
 if (svm->avic_is_running)
  entry |= AVIC_PHYSICAL_ID_ENTRY_IS_RUNNING_MASK;

 WRITE_ONCE(*(svm->avic_physical_id_cache), entry);
 avic_update_iommu_vcpu_affinity(vcpu, h_physical_id,
     svm->avic_is_running);
}
