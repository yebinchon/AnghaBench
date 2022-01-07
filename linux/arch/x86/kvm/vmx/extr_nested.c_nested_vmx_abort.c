
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {int dummy; } ;


 int KVM_REQ_TRIPLE_FAULT ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;
 int pr_debug_ratelimited (char*,int ) ;

__attribute__((used)) static void nested_vmx_abort(struct kvm_vcpu *vcpu, u32 indicator)
{

 kvm_make_request(KVM_REQ_TRIPLE_FAULT, vcpu);
 pr_debug_ratelimited("kvm: nested vmx abort, indicator %d\n", indicator);
}
