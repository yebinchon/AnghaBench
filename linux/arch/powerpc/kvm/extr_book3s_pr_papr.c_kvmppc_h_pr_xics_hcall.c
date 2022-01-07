
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {int dummy; } ;


 int EMULATE_DONE ;
 int kvmppc_set_gpr (struct kvm_vcpu*,int,long) ;
 long kvmppc_xics_hcall (struct kvm_vcpu*,int ) ;

__attribute__((used)) static int kvmppc_h_pr_xics_hcall(struct kvm_vcpu *vcpu, u32 cmd)
{
 long rc = kvmppc_xics_hcall(vcpu, cmd);
 kvmppc_set_gpr(vcpu, 3, rc);
 return EMULATE_DONE;
}
