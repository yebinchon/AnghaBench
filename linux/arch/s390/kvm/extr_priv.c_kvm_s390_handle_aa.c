
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {int ipa; } ;


 int EOPNOTSUPP ;
 int handle_ri (struct kvm_vcpu*) ;

int kvm_s390_handle_aa(struct kvm_vcpu *vcpu)
{
 if ((vcpu->arch.sie_block->ipa & 0xf) <= 4)
  return handle_ri(vcpu);
 else
  return -EOPNOTSUPP;
}
