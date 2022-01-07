
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* crycb; } ;
struct TYPE_4__ {TYPE_3__ crypto; } ;
struct kvm {int lock; TYPE_1__ arch; } ;
struct TYPE_5__ {int apcb1; int apcb0; } ;


 int KVM_REQ_VSIE_RESTART ;
 int VM_EVENT (struct kvm*,int,char*,char*) ;
 int kvm_s390_sync_request_broadcast (struct kvm*,int ) ;
 int kvm_s390_vcpu_block_all (struct kvm*) ;
 int kvm_s390_vcpu_unblock_all (struct kvm*) ;
 int memset (int *,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void kvm_arch_crypto_clear_masks(struct kvm *kvm)
{
 mutex_lock(&kvm->lock);
 kvm_s390_vcpu_block_all(kvm);

 memset(&kvm->arch.crypto.crycb->apcb0, 0,
        sizeof(kvm->arch.crypto.crycb->apcb0));
 memset(&kvm->arch.crypto.crycb->apcb1, 0,
        sizeof(kvm->arch.crypto.crycb->apcb1));

 VM_EVENT(kvm, 3, "%s", "CLR CRYCB:");

 kvm_s390_sync_request_broadcast(kvm, KVM_REQ_VSIE_RESTART);
 kvm_s390_vcpu_unblock_all(kvm);
 mutex_unlock(&kvm->lock);
}
