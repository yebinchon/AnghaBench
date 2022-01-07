
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {int eca; } ;


 int ECA_SII ;
 int ipte_lock_siif (struct kvm_vcpu*) ;
 int ipte_lock_simple (struct kvm_vcpu*) ;

void ipte_lock(struct kvm_vcpu *vcpu)
{
 if (vcpu->arch.sie_block->eca & ECA_SII)
  ipte_lock_siif(vcpu);
 else
  ipte_lock_simple(vcpu);
}
