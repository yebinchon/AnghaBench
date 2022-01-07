
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vcpu_svm {scalar_t__ dfr_reg; int ldr_reg; } ;
struct kvm_vcpu {int dummy; } ;


 scalar_t__ APIC_DFR_FLAT ;
 int AVIC_LOGICAL_ID_ENTRY_VALID_BIT ;
 int * avic_get_logical_id_entry (struct kvm_vcpu*,int ,int) ;
 int clear_bit (int ,unsigned long*) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static void avic_invalidate_logical_id_entry(struct kvm_vcpu *vcpu)
{
 struct vcpu_svm *svm = to_svm(vcpu);
 bool flat = svm->dfr_reg == APIC_DFR_FLAT;
 u32 *entry = avic_get_logical_id_entry(vcpu, svm->ldr_reg, flat);

 if (entry)
  clear_bit(AVIC_LOGICAL_ID_ENTRY_VALID_BIT, (unsigned long *)entry);
}
