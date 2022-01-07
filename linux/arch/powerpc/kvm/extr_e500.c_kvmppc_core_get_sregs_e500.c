
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


 size_t BOOKE_IRQPRIO_PERFORMANCE_MONITOR ;
 size_t BOOKE_IRQPRIO_SPE_FP_DATA ;
 size_t BOOKE_IRQPRIO_SPE_FP_ROUND ;
 size_t BOOKE_IRQPRIO_SPE_UNAVAIL ;
 int KVM_SREGS_E_ARCH206_MMU ;
 int KVM_SREGS_E_IMPL_FSL ;
 int KVM_SREGS_E_PM ;
 int KVM_SREGS_E_SPE ;
 int kvmppc_get_sregs_e500_tlb (struct kvm_vcpu*,struct kvm_sregs*) ;
 int kvmppc_get_sregs_ivor (struct kvm_vcpu*,struct kvm_sregs*) ;
 struct kvmppc_vcpu_e500* to_e500 (struct kvm_vcpu*) ;

__attribute__((used)) static int kvmppc_core_get_sregs_e500(struct kvm_vcpu *vcpu,
          struct kvm_sregs *sregs)
{
 struct kvmppc_vcpu_e500 *vcpu_e500 = to_e500(vcpu);

 sregs->u.e.features |= KVM_SREGS_E_ARCH206_MMU | KVM_SREGS_E_SPE |
                        KVM_SREGS_E_PM;
 sregs->u.e.impl_id = KVM_SREGS_E_IMPL_FSL;

 sregs->u.e.impl.fsl.features = 0;
 sregs->u.e.impl.fsl.svr = vcpu_e500->svr;
 sregs->u.e.impl.fsl.hid0 = vcpu_e500->hid0;
 sregs->u.e.impl.fsl.mcar = vcpu_e500->mcar;

 sregs->u.e.ivor_high[0] = vcpu->arch.ivor[BOOKE_IRQPRIO_SPE_UNAVAIL];
 sregs->u.e.ivor_high[1] = vcpu->arch.ivor[BOOKE_IRQPRIO_SPE_FP_DATA];
 sregs->u.e.ivor_high[2] = vcpu->arch.ivor[BOOKE_IRQPRIO_SPE_FP_ROUND];
 sregs->u.e.ivor_high[3] =
  vcpu->arch.ivor[BOOKE_IRQPRIO_PERFORMANCE_MONITOR];

 kvmppc_get_sregs_ivor(vcpu, sregs);
 kvmppc_get_sregs_e500_tlb(vcpu, sregs);
 return 0;
}
