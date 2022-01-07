
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct msr_data {int host_initiated; int data; int index; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int (* get_msr ) (struct kvm_vcpu*,struct msr_data*) ;} ;


 TYPE_1__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*,struct msr_data*) ;

__attribute__((used)) static int __kvm_get_msr(struct kvm_vcpu *vcpu, u32 index, u64 *data,
    bool host_initiated)
{
 struct msr_data msr;
 int ret;

 msr.index = index;
 msr.host_initiated = host_initiated;

 ret = kvm_x86_ops->get_msr(vcpu, &msr);
 if (!ret)
  *data = msr.data;
 return ret;
}
