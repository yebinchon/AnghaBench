
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvmppc_vcpu_e500 {void* svr; } ;
struct TYPE_2__ {int shadow_epcr; int shadow_msrp; int cpu_type; void* pvr; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int KVM_CPU_E500MC ;
 int MSRP_PMMP ;
 int MSRP_UCLEP ;
 int SPRN_EPCR_DGTMI ;
 int SPRN_EPCR_DSIGS ;
 int SPRN_EPCR_DUVD ;
 int SPRN_EPCR_ICM ;
 int SPRN_PVR ;
 int SPRN_SVR ;
 void* mfspr (int ) ;
 struct kvmppc_vcpu_e500* to_e500 (struct kvm_vcpu*) ;

int kvmppc_core_vcpu_setup(struct kvm_vcpu *vcpu)
{
 struct kvmppc_vcpu_e500 *vcpu_e500 = to_e500(vcpu);

 vcpu->arch.shadow_epcr = SPRN_EPCR_DSIGS | SPRN_EPCR_DGTMI | SPRN_EPCR_DUVD;




 vcpu->arch.shadow_msrp = MSRP_UCLEP | MSRP_PMMP;

 vcpu->arch.pvr = mfspr(SPRN_PVR);
 vcpu_e500->svr = mfspr(SPRN_SVR);

 vcpu->arch.cpu_type = KVM_CPU_E500MC;

 return 0;
}
