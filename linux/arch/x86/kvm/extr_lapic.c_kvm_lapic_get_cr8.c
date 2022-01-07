
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int APIC_TASKPRI ;
 scalar_t__ kvm_lapic_get_reg (int ,int ) ;

u64 kvm_lapic_get_cr8(struct kvm_vcpu *vcpu)
{
 u64 tpr;

 tpr = (u64) kvm_lapic_get_reg(vcpu->arch.apic, APIC_TASKPRI);

 return (tpr & 0xf0) >> 4;
}
