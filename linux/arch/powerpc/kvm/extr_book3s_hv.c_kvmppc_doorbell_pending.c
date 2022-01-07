
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvmppc_vcore {int first_vcpuid; int dpdes; } ;
struct TYPE_2__ {struct kvmppc_vcore* vcore; scalar_t__ doorbell_request; } ;
struct kvm_vcpu {int vcpu_id; TYPE_1__ arch; } ;


 int smp_rmb () ;

__attribute__((used)) static bool kvmppc_doorbell_pending(struct kvm_vcpu *vcpu)
{
 int thr;
 struct kvmppc_vcore *vc;

 if (vcpu->arch.doorbell_request)
  return 1;





 smp_rmb();
 vc = vcpu->arch.vcore;
 thr = vcpu->vcpu_id - vc->first_vcpuid;
 return !!(vc->dpdes & (1 << thr));
}
