
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_async_pf {int dummy; } ;



void kvm_arch_async_page_ready(struct kvm_vcpu *vcpu,
          struct kvm_async_pf *work)
{

}
