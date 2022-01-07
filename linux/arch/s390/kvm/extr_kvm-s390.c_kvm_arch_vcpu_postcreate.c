
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int gmap; int enabled_gmap; TYPE_2__* sie_block; } ;
struct kvm_vcpu {TYPE_3__ arch; TYPE_4__* kvm; } ;
struct TYPE_6__ {scalar_t__ user_instr0; int gmap; int epdx; int epoch; } ;
struct TYPE_9__ {TYPE_1__ arch; int lock; } ;
struct TYPE_7__ {int ictl; int epdx; int epoch; } ;


 int ICTL_OPEREXC ;
 int kvm_is_ucontrol (TYPE_4__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int sca_add_vcpu (struct kvm_vcpu*) ;
 scalar_t__ test_kvm_facility (TYPE_4__*,int) ;

void kvm_arch_vcpu_postcreate(struct kvm_vcpu *vcpu)
{
 mutex_lock(&vcpu->kvm->lock);
 preempt_disable();
 vcpu->arch.sie_block->epoch = vcpu->kvm->arch.epoch;
 vcpu->arch.sie_block->epdx = vcpu->kvm->arch.epdx;
 preempt_enable();
 mutex_unlock(&vcpu->kvm->lock);
 if (!kvm_is_ucontrol(vcpu->kvm)) {
  vcpu->arch.gmap = vcpu->kvm->arch.gmap;
  sca_add_vcpu(vcpu);
 }
 if (test_kvm_facility(vcpu->kvm, 74) || vcpu->kvm->arch.user_instr0)
  vcpu->arch.sie_block->ictl |= ICTL_OPEREXC;

 vcpu->arch.enabled_gmap = vcpu->arch.gmap;
}
