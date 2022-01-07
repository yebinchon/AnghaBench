
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_run {int dummy; } ;


 int esr_get_class_string (int ) ;
 int kvm_inject_undefined (struct kvm_vcpu*) ;
 int kvm_pr_unimpl (char*,int ,int ) ;
 int kvm_vcpu_get_hsr (struct kvm_vcpu*) ;

__attribute__((used)) static int kvm_handle_unknown_ec(struct kvm_vcpu *vcpu, struct kvm_run *run)
{
 u32 hsr = kvm_vcpu_get_hsr(vcpu);

 kvm_pr_unimpl("Unknown exception class: hsr: %#08x -- %s\n",
        hsr, esr_get_class_string(hsr));

 kvm_inject_undefined(vcpu);
 return 1;
}
