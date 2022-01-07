
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int KVM_DEV_TYPE_XICS ;
 int KVM_DEV_TYPE_XIVE ;
 int THIS_MODULE ;
 int kvm_init (int *,int,int ,int ) ;
 int kvm_register_device_ops (int *,int ) ;
 int kvm_xics_ops ;
 int kvm_xive_native_ops ;
 int kvm_xive_ops ;
 int kvmppc_book3s_init_pr () ;
 int kvmppc_xive_init_module () ;
 int kvmppc_xive_native_init_module () ;
 scalar_t__ kvmppc_xive_native_supported () ;
 scalar_t__ xics_on_xive () ;

__attribute__((used)) static int kvmppc_book3s_init(void)
{
 int r;

 r = kvm_init(((void*)0), sizeof(struct kvm_vcpu), 0, THIS_MODULE);
 if (r)
  return r;
 return r;
}
