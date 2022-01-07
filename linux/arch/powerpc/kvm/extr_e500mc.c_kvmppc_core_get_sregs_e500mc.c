
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct kvmppc_vcpu_e500 {int mcar; int hid0; int svr; } ;
struct TYPE_10__ {int * ivor; } ;
struct kvm_vcpu {TYPE_5__ arch; } ;
struct TYPE_6__ {int mcar; int hid0; int svr; scalar_t__ features; } ;
struct TYPE_7__ {TYPE_1__ fsl; } ;
struct TYPE_8__ {int features; int * ivor_high; TYPE_2__ impl; int impl_id; } ;
struct TYPE_9__ {TYPE_3__ e; } ;
struct kvm_sregs {TYPE_4__ u; } ;


 size_t BOOKE_IRQPRIO_DBELL ;
 size_t BOOKE_IRQPRIO_DBELL_CRIT ;
 size_t BOOKE_IRQPRIO_PERFORMANCE_MONITOR ;
 int KVM_SREGS_E_ARCH206_MMU ;
 int KVM_SREGS_E_IMPL_FSL ;
 int KVM_SREGS_E_PC ;
 int KVM_SREGS_E_PM ;
 int kvmppc_get_sregs_e500_tlb (struct kvm_vcpu*,struct kvm_sregs*) ;
 int kvmppc_get_sregs_ivor (struct kvm_vcpu*,struct kvm_sregs*) ;
 struct kvmppc_vcpu_e500* to_e500 (struct kvm_vcpu*) ;

__attribute__((used)) static int kvmppc_core_get_sregs_e500mc(struct kvm_vcpu *vcpu,
     struct kvm_sregs *sregs)
{
 struct kvmppc_vcpu_e500 *vcpu_e500 = to_e500(vcpu);

 sregs->u.e.features |= KVM_SREGS_E_ARCH206_MMU | KVM_SREGS_E_PM |
          KVM_SREGS_E_PC;
 sregs->u.e.impl_id = KVM_SREGS_E_IMPL_FSL;

 sregs->u.e.impl.fsl.features = 0;
 sregs->u.e.impl.fsl.svr = vcpu_e500->svr;
 sregs->u.e.impl.fsl.hid0 = vcpu_e500->hid0;
 sregs->u.e.impl.fsl.mcar = vcpu_e500->mcar;

 kvmppc_get_sregs_e500_tlb(vcpu, sregs);

 sregs->u.e.ivor_high[3] =
  vcpu->arch.ivor[BOOKE_IRQPRIO_PERFORMANCE_MONITOR];
 sregs->u.e.ivor_high[4] = vcpu->arch.ivor[BOOKE_IRQPRIO_DBELL];
 sregs->u.e.ivor_high[5] = vcpu->arch.ivor[BOOKE_IRQPRIO_DBELL_CRIT];

 return kvmppc_get_sregs_ivor(vcpu, sregs);
}
