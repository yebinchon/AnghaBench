
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* sie_block; } ;
struct TYPE_4__ {int exit_pei; } ;
struct kvm_vcpu {TYPE_3__ arch; TYPE_1__ stat; } ;
struct TYPE_5__ {int ipa; } ;


 int EOPNOTSUPP ;
 int handle_mvpg_pei (struct kvm_vcpu*) ;
 int kvm_s390_handle_sigp_pei (struct kvm_vcpu*) ;

__attribute__((used)) static int handle_partial_execution(struct kvm_vcpu *vcpu)
{
 vcpu->stat.exit_pei++;

 if (vcpu->arch.sie_block->ipa == 0xb254)
  return handle_mvpg_pei(vcpu);
 if (vcpu->arch.sie_block->ipa >> 8 == 0xae)
  return kvm_s390_handle_sigp_pei(vcpu);

 return -EOPNOTSUPP;
}
