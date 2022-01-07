
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_4__ {int misc_low; } ;
struct TYPE_5__ {TYPE_1__ msrs; } ;
struct TYPE_6__ {TYPE_2__ nested; } ;


 TYPE_3__* to_vmx (struct kvm_vcpu*) ;
 int vmx_misc_cr3_count (int ) ;

__attribute__((used)) static inline unsigned nested_cpu_vmx_misc_cr3_count(struct kvm_vcpu *vcpu)
{
 return vmx_misc_cr3_count(to_vmx(vcpu)->nested.msrs.misc_low);
}
