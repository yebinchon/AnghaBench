
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {scalar_t__ cbrlo; } ;


 int free_page (scalar_t__) ;

void kvm_s390_vcpu_unsetup_cmma(struct kvm_vcpu *vcpu)
{
 free_page(vcpu->arch.sie_block->cbrlo);
 vcpu->arch.sie_block->cbrlo = 0;
}
