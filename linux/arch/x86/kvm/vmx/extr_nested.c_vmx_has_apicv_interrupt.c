
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int APIC_PROCPRI ;
 int kvm_lapic_get_reg (int ,int ) ;
 int vmx_get_rvi () ;

__attribute__((used)) static u8 vmx_has_apicv_interrupt(struct kvm_vcpu *vcpu)
{
 u8 rvi = vmx_get_rvi();
 u8 vppr = kvm_lapic_get_reg(vcpu->arch.apic, APIC_PROCPRI);

 return ((rvi & 0xf0) > (vppr & 0xf0));
}
