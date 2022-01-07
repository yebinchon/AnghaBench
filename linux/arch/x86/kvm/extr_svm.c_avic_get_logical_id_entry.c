
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {int kvm; } ;
struct kvm_svm {int avic_logical_id_table_page; } ;


 int GET_APIC_LOGICAL_ID (int ) ;
 int ffs (int) ;
 scalar_t__ page_address (int ) ;
 struct kvm_svm* to_kvm_svm (int ) ;

__attribute__((used)) static u32 *avic_get_logical_id_entry(struct kvm_vcpu *vcpu, u32 ldr, bool flat)
{
 struct kvm_svm *kvm_svm = to_kvm_svm(vcpu->kvm);
 int index;
 u32 *logical_apic_id_table;
 int dlid = GET_APIC_LOGICAL_ID(ldr);

 if (!dlid)
  return ((void*)0);

 if (flat) {
  index = ffs(dlid) - 1;
  if (index > 7)
   return ((void*)0);
 } else {
  int cluster = (dlid & 0xf0) >> 4;
  int apic = ffs(dlid & 0x0f) - 1;

  if ((apic < 0) || (apic > 7) ||
      (cluster >= 0xf))
   return ((void*)0);
  index = (cluster << 2) + apic;
 }

 logical_apic_id_table = (u32 *) page_address(kvm_svm->avic_logical_id_table_page);

 return &logical_apic_id_table[index];
}
