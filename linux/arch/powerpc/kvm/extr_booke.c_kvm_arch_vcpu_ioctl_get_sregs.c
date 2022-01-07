
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pvr; } ;
struct kvm_vcpu {TYPE_4__* kvm; TYPE_1__ arch; } ;
struct kvm_sregs {int pvr; } ;
struct TYPE_7__ {TYPE_2__* kvm_ops; } ;
struct TYPE_8__ {TYPE_3__ arch; } ;
struct TYPE_6__ {int (* get_sregs ) (struct kvm_vcpu*,struct kvm_sregs*) ;} ;


 int get_sregs_arch206 (struct kvm_vcpu*,struct kvm_sregs*) ;
 int get_sregs_base (struct kvm_vcpu*,struct kvm_sregs*) ;
 int stub1 (struct kvm_vcpu*,struct kvm_sregs*) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

int kvm_arch_vcpu_ioctl_get_sregs(struct kvm_vcpu *vcpu,
                                  struct kvm_sregs *sregs)
{
 int ret;

 vcpu_load(vcpu);

 sregs->pvr = vcpu->arch.pvr;

 get_sregs_base(vcpu, sregs);
 get_sregs_arch206(vcpu, sregs);
 ret = vcpu->kvm->arch.kvm_ops->get_sregs(vcpu, sregs);

 vcpu_put(vcpu);
 return ret;
}
