
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* shared; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_7__ {int features; int mas6; int mas4; int mas7_3; int mas2; int mas1; int mas0; } ;
struct TYPE_8__ {TYPE_3__ e; } ;
struct kvm_sregs {TYPE_4__ u; } ;
struct TYPE_5__ {int mas6; int mas4; int mas7_3; int mas2; int mas1; int mas0; } ;


 int KVM_SREGS_E_ARCH206_MMU ;

int kvmppc_set_sregs_e500_tlb(struct kvm_vcpu *vcpu, struct kvm_sregs *sregs)
{
 if (sregs->u.e.features & KVM_SREGS_E_ARCH206_MMU) {
  vcpu->arch.shared->mas0 = sregs->u.e.mas0;
  vcpu->arch.shared->mas1 = sregs->u.e.mas1;
  vcpu->arch.shared->mas2 = sregs->u.e.mas2;
  vcpu->arch.shared->mas7_3 = sregs->u.e.mas7_3;
  vcpu->arch.shared->mas4 = sregs->u.e.mas4;
  vcpu->arch.shared->mas6 = sregs->u.e.mas6;
 }

 return 0;
}
