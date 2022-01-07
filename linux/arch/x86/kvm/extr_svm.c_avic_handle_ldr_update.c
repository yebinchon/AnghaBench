
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct vcpu_svm {scalar_t__ ldr_reg; } ;
struct TYPE_2__ {int apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int APIC_LDR ;
 int avic_invalidate_logical_id_entry (struct kvm_vcpu*) ;
 int avic_ldr_write (struct kvm_vcpu*,scalar_t__,scalar_t__) ;
 scalar_t__ kvm_lapic_get_reg (int ,int ) ;
 scalar_t__ kvm_xapic_id (int ) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static int avic_handle_ldr_update(struct kvm_vcpu *vcpu)
{
 int ret = 0;
 struct vcpu_svm *svm = to_svm(vcpu);
 u32 ldr = kvm_lapic_get_reg(vcpu->arch.apic, APIC_LDR);
 u32 id = kvm_xapic_id(vcpu->arch.apic);

 if (ldr == svm->ldr_reg)
  return 0;

 avic_invalidate_logical_id_entry(vcpu);

 if (ldr)
  ret = avic_ldr_write(vcpu, id, ldr);

 if (!ret)
  svm->ldr_reg = ldr;

 return ret;
}
