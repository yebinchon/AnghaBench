
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_4__ {int cr0_fixed1; int cr0_fixed0; } ;
struct TYPE_5__ {TYPE_1__ msrs; } ;
struct TYPE_6__ {TYPE_2__ nested; } ;


 int fixed_bits_valid (unsigned long,int ,int ) ;
 TYPE_3__* to_vmx (struct kvm_vcpu*) ;

__attribute__((used)) static bool nested_host_cr0_valid(struct kvm_vcpu *vcpu, unsigned long val)
{
 u64 fixed0 = to_vmx(vcpu)->nested.msrs.cr0_fixed0;
 u64 fixed1 = to_vmx(vcpu)->nested.msrs.cr0_fixed1;

 return fixed_bits_valid(val, fixed0, fixed1);
}
