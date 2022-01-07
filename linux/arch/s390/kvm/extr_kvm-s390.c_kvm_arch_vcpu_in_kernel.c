
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* sie_block; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct TYPE_4__ {int mask; } ;
struct TYPE_5__ {TYPE_1__ gpsw; } ;


 int PSW_MASK_PSTATE ;

bool kvm_arch_vcpu_in_kernel(struct kvm_vcpu *vcpu)
{
 return !(vcpu->arch.sie_block->gpsw.mask & PSW_MASK_PSTATE);
}
