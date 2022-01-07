
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int hypercalls; } ;
struct kvm_vcpu {TYPE_1__ stat; } ;


 int kvm_hv_hypercall_set_result (struct kvm_vcpu*,int ) ;
 int kvm_skip_emulated_instruction (struct kvm_vcpu*) ;

__attribute__((used)) static int kvm_hv_hypercall_complete(struct kvm_vcpu *vcpu, u64 result)
{
 kvm_hv_hypercall_set_result(vcpu, result);
 ++vcpu->stat.hypercalls;
 return kvm_skip_emulated_instruction(vcpu);
}
