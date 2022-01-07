
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kvm_vcpu {size_t vcpu_id; TYPE_3__* kvm; } ;
struct esca_block {TYPE_1__* cpu; scalar_t__ mcn; } ;
struct bsca_block {TYPE_1__* cpu; scalar_t__ mcn; } ;
struct TYPE_5__ {int sca_lock; struct esca_block* sca; scalar_t__ use_esca; } ;
struct TYPE_6__ {TYPE_2__ arch; } ;
struct TYPE_4__ {scalar_t__ sda; } ;


 int clear_bit_inv (size_t,unsigned long*) ;
 int kvm_s390_use_sca_entries () ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

__attribute__((used)) static void sca_del_vcpu(struct kvm_vcpu *vcpu)
{
 if (!kvm_s390_use_sca_entries())
  return;
 read_lock(&vcpu->kvm->arch.sca_lock);
 if (vcpu->kvm->arch.use_esca) {
  struct esca_block *sca = vcpu->kvm->arch.sca;

  clear_bit_inv(vcpu->vcpu_id, (unsigned long *) sca->mcn);
  sca->cpu[vcpu->vcpu_id].sda = 0;
 } else {
  struct bsca_block *sca = vcpu->kvm->arch.sca;

  clear_bit_inv(vcpu->vcpu_id, (unsigned long *) &sca->mcn);
  sca->cpu[vcpu->vcpu_id].sda = 0;
 }
 read_unlock(&vcpu->kvm->arch.sca_lock);
}
