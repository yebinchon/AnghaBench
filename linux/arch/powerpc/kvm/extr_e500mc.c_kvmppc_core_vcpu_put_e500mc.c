
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* oldpir; TYPE_1__* shared; void* epr; void* epsc; void* eplc; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {void* esr; void* dar; void* srr1; void* srr0; void* sprg3; void* sprg2; void* sprg1; void* sprg0; } ;


 int SPRN_EPLC ;
 int SPRN_EPSC ;
 int SPRN_GDEAR ;
 int SPRN_GEPR ;
 int SPRN_GESR ;
 int SPRN_GSPRG0 ;
 int SPRN_GSPRG1 ;
 int SPRN_GSPRG2 ;
 int SPRN_GSPRG3 ;
 int SPRN_GSRR0 ;
 int SPRN_GSRR1 ;
 int SPRN_PIR ;
 int kvmppc_booke_vcpu_put (struct kvm_vcpu*) ;
 void* mfspr (int ) ;

__attribute__((used)) static void kvmppc_core_vcpu_put_e500mc(struct kvm_vcpu *vcpu)
{
 vcpu->arch.eplc = mfspr(SPRN_EPLC);
 vcpu->arch.epsc = mfspr(SPRN_EPSC);

 vcpu->arch.shared->sprg0 = mfspr(SPRN_GSPRG0);
 vcpu->arch.shared->sprg1 = mfspr(SPRN_GSPRG1);
 vcpu->arch.shared->sprg2 = mfspr(SPRN_GSPRG2);
 vcpu->arch.shared->sprg3 = mfspr(SPRN_GSPRG3);

 vcpu->arch.shared->srr0 = mfspr(SPRN_GSRR0);
 vcpu->arch.shared->srr1 = mfspr(SPRN_GSRR1);

 vcpu->arch.epr = mfspr(SPRN_GEPR);
 vcpu->arch.shared->dar = mfspr(SPRN_GDEAR);
 vcpu->arch.shared->esr = mfspr(SPRN_GESR);

 vcpu->arch.oldpir = mfspr(SPRN_PIR);

 kvmppc_booke_vcpu_put(vcpu);
}
