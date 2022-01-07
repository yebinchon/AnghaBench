
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {int cbrlo; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int get_zeroed_page (int ) ;

int kvm_s390_vcpu_setup_cmma(struct kvm_vcpu *vcpu)
{
 vcpu->arch.sie_block->cbrlo = get_zeroed_page(GFP_KERNEL);
 if (!vcpu->arch.sie_block->cbrlo)
  return -ENOMEM;
 return 0;
}
