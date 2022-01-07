
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {unsigned long mcsrr0; int mcsrr1; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;



__attribute__((used)) static void set_guest_mcsrr(struct kvm_vcpu *vcpu, unsigned long srr0, u32 srr1)
{
 vcpu->arch.mcsrr0 = srr0;
 vcpu->arch.mcsrr1 = srr1;
}
