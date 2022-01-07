
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct kvmppc_xics {scalar_t__ real_mode; } ;
struct TYPE_4__ {int icp; } ;
struct kvm_vcpu {TYPE_3__* kvm; TYPE_1__ arch; } ;
struct TYPE_5__ {struct kvmppc_xics* xics; } ;
struct TYPE_6__ {TYPE_2__ arch; } ;




 int H_HARDWARE ;


 int H_SUCCESS ;


 unsigned long get_tb () ;
 scalar_t__ is_kvmppc_hv_enabled (TYPE_3__*) ;
 int kvmppc_get_gpr (struct kvm_vcpu*,int) ;
 int kvmppc_h_cppr (struct kvm_vcpu*,int ) ;
 int kvmppc_h_eoi (struct kvm_vcpu*,int ) ;
 int kvmppc_h_ipi (struct kvm_vcpu*,int ,int ) ;
 int kvmppc_h_ipoll (struct kvm_vcpu*,int ) ;
 unsigned long kvmppc_h_xirr (struct kvm_vcpu*) ;
 int kvmppc_set_gpr (struct kvm_vcpu*,int,unsigned long) ;
 int kvmppc_xics_rm_complete (struct kvm_vcpu*,int) ;

int kvmppc_xics_hcall(struct kvm_vcpu *vcpu, u32 req)
{
 struct kvmppc_xics *xics = vcpu->kvm->arch.xics;
 unsigned long res;
 int rc = H_SUCCESS;


 if (!xics || !vcpu->arch.icp)
  return H_HARDWARE;


 switch (req) {
 case 128:
  res = kvmppc_h_xirr(vcpu);
  kvmppc_set_gpr(vcpu, 4, res);
  kvmppc_set_gpr(vcpu, 5, get_tb());
  return rc;
 case 130:
  rc = kvmppc_h_ipoll(vcpu, kvmppc_get_gpr(vcpu, 4));
  return rc;
 }


 if (xics->real_mode && is_kvmppc_hv_enabled(vcpu->kvm))
  return kvmppc_xics_rm_complete(vcpu, req);

 switch (req) {
 case 129:
  res = kvmppc_h_xirr(vcpu);
  kvmppc_set_gpr(vcpu, 4, res);
  break;
 case 133:
  kvmppc_h_cppr(vcpu, kvmppc_get_gpr(vcpu, 4));
  break;
 case 132:
  rc = kvmppc_h_eoi(vcpu, kvmppc_get_gpr(vcpu, 4));
  break;
 case 131:
  rc = kvmppc_h_ipi(vcpu, kvmppc_get_gpr(vcpu, 4),
      kvmppc_get_gpr(vcpu, 5));
  break;
 }

 return rc;
}
