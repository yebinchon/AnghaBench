
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int kvm_lapic_reg_read (int ,int,int,int*) ;
 int kvm_lapic_reg_write (int ,int,int) ;

void kvm_apic_write_nodecode(struct kvm_vcpu *vcpu, u32 offset)
{
 u32 val = 0;


 offset &= 0xff0;

 kvm_lapic_reg_read(vcpu->arch.apic, offset, 4, &val);


 kvm_lapic_reg_write(vcpu->arch.apic, offset, val);
}
