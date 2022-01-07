
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ivpr; int decar; int mcsrr1; int mcsrr0; } ;
struct kvm_vcpu {TYPE_1__ arch; int vcpu_id; } ;
struct TYPE_6__ {int ivpr; int decar; int mcsrr1; int mcsrr0; int pir; int features; } ;
struct TYPE_5__ {TYPE_3__ e; } ;
struct kvm_sregs {TYPE_2__ u; } ;


 int KVM_SREGS_E_ARCH206 ;

__attribute__((used)) static void get_sregs_arch206(struct kvm_vcpu *vcpu,
                              struct kvm_sregs *sregs)
{
 sregs->u.e.features |= KVM_SREGS_E_ARCH206;

 sregs->u.e.pir = vcpu->vcpu_id;
 sregs->u.e.mcsrr0 = vcpu->arch.mcsrr0;
 sregs->u.e.mcsrr1 = vcpu->arch.mcsrr1;
 sregs->u.e.decar = vcpu->arch.decar;
 sregs->u.e.ivpr = vcpu->arch.ivpr;
}
