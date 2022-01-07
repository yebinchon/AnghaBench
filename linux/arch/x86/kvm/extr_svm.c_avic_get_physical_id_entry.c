
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int kvm; } ;
struct kvm_svm {int avic_physical_id_table_page; } ;


 unsigned int AVIC_MAX_PHYSICAL_ID_COUNT ;
 int * page_address (int ) ;
 struct kvm_svm* to_kvm_svm (int ) ;

__attribute__((used)) static u64 *avic_get_physical_id_entry(struct kvm_vcpu *vcpu,
           unsigned int index)
{
 u64 *avic_physical_id_table;
 struct kvm_svm *kvm_svm = to_kvm_svm(vcpu->kvm);

 if (index >= AVIC_MAX_PHYSICAL_ID_COUNT)
  return ((void*)0);

 avic_physical_id_table = page_address(kvm_svm->avic_physical_id_table_page);

 return &avic_physical_id_table[index];
}
