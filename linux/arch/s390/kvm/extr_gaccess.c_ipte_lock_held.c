
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_5__* kvm; TYPE_2__ arch; } ;
struct TYPE_8__ {scalar_t__ ipte_lock_count; int sca_lock; } ;
struct TYPE_10__ {TYPE_3__ arch; } ;
struct TYPE_9__ {scalar_t__ kh; } ;
struct TYPE_6__ {int eca; } ;


 int ECA_SII ;
 TYPE_4__* kvm_s390_get_ipte_control (TYPE_5__*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

int ipte_lock_held(struct kvm_vcpu *vcpu)
{
 if (vcpu->arch.sie_block->eca & ECA_SII) {
  int rc;

  read_lock(&vcpu->kvm->arch.sca_lock);
  rc = kvm_s390_get_ipte_control(vcpu->kvm)->kh != 0;
  read_unlock(&vcpu->kvm->arch.sca_lock);
  return rc;
 }
 return vcpu->kvm->arch.ipte_lock_count != 0;
}
