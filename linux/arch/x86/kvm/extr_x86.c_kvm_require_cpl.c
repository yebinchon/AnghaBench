
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int (* get_cpl ) (struct kvm_vcpu*) ;} ;


 int GP_VECTOR ;
 int kvm_queue_exception_e (struct kvm_vcpu*,int ,int ) ;
 TYPE_1__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*) ;

bool kvm_require_cpl(struct kvm_vcpu *vcpu, int required_cpl)
{
 if (kvm_x86_ops->get_cpl(vcpu) <= required_cpl)
  return 1;
 kvm_queue_exception_e(vcpu, GP_VECTOR, 0);
 return 0;
}
