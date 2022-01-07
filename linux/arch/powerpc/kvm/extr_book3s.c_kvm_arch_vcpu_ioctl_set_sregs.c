
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kvm_vcpu {TYPE_3__* kvm; } ;
struct kvm_sregs {int dummy; } ;
struct TYPE_5__ {TYPE_1__* kvm_ops; } ;
struct TYPE_6__ {TYPE_2__ arch; } ;
struct TYPE_4__ {int (* set_sregs ) (struct kvm_vcpu*,struct kvm_sregs*) ;} ;


 int stub1 (struct kvm_vcpu*,struct kvm_sregs*) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

int kvm_arch_vcpu_ioctl_set_sregs(struct kvm_vcpu *vcpu,
      struct kvm_sregs *sregs)
{
 int ret;

 vcpu_load(vcpu);
 ret = vcpu->kvm->arch.kvm_ops->set_sregs(vcpu, sregs);
 vcpu_put(vcpu);

 return ret;
}
