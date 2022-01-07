
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct vcpu_svm {scalar_t__ dfr_reg; } ;
struct TYPE_2__ {int apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int APIC_DFR ;
 int avic_invalidate_logical_id_entry (struct kvm_vcpu*) ;
 scalar_t__ kvm_lapic_get_reg (int ,int ) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static void avic_handle_dfr_update(struct kvm_vcpu *vcpu)
{
 struct vcpu_svm *svm = to_svm(vcpu);
 u32 dfr = kvm_lapic_get_reg(vcpu->arch.apic, APIC_DFR);

 if (svm->dfr_reg == dfr)
  return;

 avic_invalidate_logical_id_entry(vcpu);
 svm->dfr_reg = dfr;
}
