
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct kvm_lapic* apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_lapic {int dummy; } ;


 int APIC_TASKPRI ;
 int apic_set_tpr (struct kvm_lapic*,unsigned long) ;
 int kvm_lapic_get_reg (struct kvm_lapic*,int ) ;

void kvm_lapic_set_tpr(struct kvm_vcpu *vcpu, unsigned long cr8)
{
 struct kvm_lapic *apic = vcpu->arch.apic;

 apic_set_tpr(apic, ((cr8 & 0x0f) << 4)
       | (kvm_lapic_get_reg(apic, APIC_TASKPRI) & 4));
}
