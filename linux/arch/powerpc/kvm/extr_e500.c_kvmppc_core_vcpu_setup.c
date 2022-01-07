
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvmppc_vcpu_e500 {void* svr; } ;
struct TYPE_2__ {int cpu_type; void* pvr; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int KVM_CPU_E500V2 ;
 int SPRN_PVR ;
 int SPRN_SVR ;
 int kvmppc_e500_tlb_setup (struct kvmppc_vcpu_e500*) ;
 void* mfspr (int ) ;
 struct kvmppc_vcpu_e500* to_e500 (struct kvm_vcpu*) ;

int kvmppc_core_vcpu_setup(struct kvm_vcpu *vcpu)
{
 struct kvmppc_vcpu_e500 *vcpu_e500 = to_e500(vcpu);

 kvmppc_e500_tlb_setup(vcpu_e500);


 vcpu->arch.pvr = mfspr(SPRN_PVR);
 vcpu_e500->svr = mfspr(SPRN_SVR);

 vcpu->arch.cpu_type = KVM_CPU_E500V2;

 return 0;
}
