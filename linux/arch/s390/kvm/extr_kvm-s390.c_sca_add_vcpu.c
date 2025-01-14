
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* sie_block; } ;
struct kvm_vcpu {size_t vcpu_id; TYPE_5__* kvm; TYPE_3__ arch; } ;
struct esca_block {scalar_t__ mcn; TYPE_1__* cpu; } ;
struct bsca_block {scalar_t__ mcn; TYPE_1__* cpu; } ;
typedef int __u64 ;
typedef int __u32 ;
struct TYPE_9__ {int sca_lock; struct esca_block* sca; scalar_t__ use_esca; } ;
struct TYPE_10__ {TYPE_4__ arch; } ;
struct TYPE_7__ {int scaoh; int scaol; int ecb2; } ;
struct TYPE_6__ {int sda; } ;


 int ECB2_ESCA ;
 int kvm_s390_use_sca_entries () ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int set_bit_inv (size_t,unsigned long*) ;

__attribute__((used)) static void sca_add_vcpu(struct kvm_vcpu *vcpu)
{
 if (!kvm_s390_use_sca_entries()) {
  struct bsca_block *sca = vcpu->kvm->arch.sca;


  vcpu->arch.sie_block->scaoh = (__u32)(((__u64)sca) >> 32);
  vcpu->arch.sie_block->scaol = (__u32)(__u64)sca;
  return;
 }
 read_lock(&vcpu->kvm->arch.sca_lock);
 if (vcpu->kvm->arch.use_esca) {
  struct esca_block *sca = vcpu->kvm->arch.sca;

  sca->cpu[vcpu->vcpu_id].sda = (__u64) vcpu->arch.sie_block;
  vcpu->arch.sie_block->scaoh = (__u32)(((__u64)sca) >> 32);
  vcpu->arch.sie_block->scaol = (__u32)(__u64)sca & ~0x3fU;
  vcpu->arch.sie_block->ecb2 |= ECB2_ESCA;
  set_bit_inv(vcpu->vcpu_id, (unsigned long *) sca->mcn);
 } else {
  struct bsca_block *sca = vcpu->kvm->arch.sca;

  sca->cpu[vcpu->vcpu_id].sda = (__u64) vcpu->arch.sie_block;
  vcpu->arch.sie_block->scaoh = (__u32)(((__u64)sca) >> 32);
  vcpu->arch.sie_block->scaol = (__u32)(__u64)sca;
  set_bit_inv(vcpu->vcpu_id, (unsigned long *) &sca->mcn);
 }
 read_unlock(&vcpu->kvm->arch.sca_lock);
}
