
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* get_cpl ) (struct kvm_vcpu*) ;} ;


 scalar_t__ __kvm_set_xcr (struct kvm_vcpu*,int ,int ) ;
 int kvm_inject_gp (struct kvm_vcpu*,int ) ;
 TYPE_1__* kvm_x86_ops ;
 scalar_t__ stub1 (struct kvm_vcpu*) ;

int kvm_set_xcr(struct kvm_vcpu *vcpu, u32 index, u64 xcr)
{
 if (kvm_x86_ops->get_cpl(vcpu) != 0 ||
     __kvm_set_xcr(vcpu, index, xcr)) {
  kvm_inject_gp(vcpu, 0);
  return 1;
 }
 return 0;
}
