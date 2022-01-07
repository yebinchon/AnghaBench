
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int pid; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;



void kvmppc_set_pid(struct kvm_vcpu *vcpu, u32 pid)
{
 vcpu->arch.pid = pid;
}
