
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct msr_data {int index; int host_initiated; int data; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int (* set_msr ) (struct kvm_vcpu*,struct msr_data*) ;} ;
 int get_canonical (int ,int ) ;
 int is_noncanonical_address (int ,struct kvm_vcpu*) ;
 TYPE_1__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*,struct msr_data*) ;
 int vcpu_virt_addr_bits (struct kvm_vcpu*) ;

__attribute__((used)) static int __kvm_set_msr(struct kvm_vcpu *vcpu, u32 index, u64 data,
    bool host_initiated)
{
 struct msr_data msr;

 switch (index) {
 case 133:
 case 132:
 case 129:
 case 134:
 case 128:
  if (is_noncanonical_address(data, vcpu))
   return 1;
  break;
 case 131:
 case 130:
  data = get_canonical(data, vcpu_virt_addr_bits(vcpu));
 }

 msr.data = data;
 msr.index = index;
 msr.host_initiated = host_initiated;

 return kvm_x86_ops->set_msr(vcpu, &msr);
}
