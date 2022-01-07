
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct kvmppc_vcpu_e500 {scalar_t__* pid; } ;
struct TYPE_2__ {scalar_t__ pid; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int kvmppc_e500_recalc_shadow_pid (struct kvmppc_vcpu_e500*) ;
 struct kvmppc_vcpu_e500* to_e500 (struct kvm_vcpu*) ;

void kvmppc_set_pid(struct kvm_vcpu *vcpu, u32 pid)
{
 struct kvmppc_vcpu_e500 *vcpu_e500 = to_e500(vcpu);

 if (vcpu->arch.pid != pid) {
  vcpu_e500->pid[0] = vcpu->arch.pid = pid;
  kvmppc_e500_recalc_shadow_pid(vcpu_e500);
 }
}
