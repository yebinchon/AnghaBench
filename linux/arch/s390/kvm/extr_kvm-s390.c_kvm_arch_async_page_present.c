
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int pfault_token; } ;
struct kvm_async_pf {TYPE_1__ arch; } ;


 int __kvm_inject_pfault_token (struct kvm_vcpu*,int,int ) ;
 int trace_kvm_s390_pfault_done (struct kvm_vcpu*,int ) ;

void kvm_arch_async_page_present(struct kvm_vcpu *vcpu,
     struct kvm_async_pf *work)
{
 trace_kvm_s390_pfault_done(vcpu, work->arch.pfault_token);
 __kvm_inject_pfault_token(vcpu, 0, work->arch.pfault_token);
}
