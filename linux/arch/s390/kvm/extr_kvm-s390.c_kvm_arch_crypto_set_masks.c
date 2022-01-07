
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int adm; int aqm; int apm; } ;
struct TYPE_7__ {int adm; int aqm; int apm; } ;
struct kvm_s390_crypto_cb {TYPE_4__ apcb0; TYPE_3__ apcb1; } ;
struct TYPE_5__ {int crycbd; struct kvm_s390_crypto_cb* crycb; } ;
struct TYPE_6__ {TYPE_1__ crypto; } ;
struct kvm {int lock; TYPE_2__ arch; } ;





 int CRYCB_FORMAT_MASK ;
 int KVM_REQ_VSIE_RESTART ;
 int VM_EVENT (struct kvm*,int,char*,unsigned long,unsigned short,unsigned short,...) ;
 int kvm_s390_sync_request_broadcast (struct kvm*,int ) ;
 int kvm_s390_vcpu_block_all (struct kvm*) ;
 int kvm_s390_vcpu_unblock_all (struct kvm*) ;
 int memcpy (int ,unsigned long*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void kvm_arch_crypto_set_masks(struct kvm *kvm, unsigned long *apm,
          unsigned long *aqm, unsigned long *adm)
{
 struct kvm_s390_crypto_cb *crycb = kvm->arch.crypto.crycb;

 mutex_lock(&kvm->lock);
 kvm_s390_vcpu_block_all(kvm);

 switch (kvm->arch.crypto.crycbd & CRYCB_FORMAT_MASK) {
 case 128:
  memcpy(crycb->apcb1.apm, apm, 32);
  VM_EVENT(kvm, 3, "SET CRYCB: apm %016lx %016lx %016lx %016lx",
    apm[0], apm[1], apm[2], apm[3]);
  memcpy(crycb->apcb1.aqm, aqm, 32);
  VM_EVENT(kvm, 3, "SET CRYCB: aqm %016lx %016lx %016lx %016lx",
    aqm[0], aqm[1], aqm[2], aqm[3]);
  memcpy(crycb->apcb1.adm, adm, 32);
  VM_EVENT(kvm, 3, "SET CRYCB: adm %016lx %016lx %016lx %016lx",
    adm[0], adm[1], adm[2], adm[3]);
  break;
 case 129:
 case 130:
  memcpy(crycb->apcb0.apm, apm, 8);
  memcpy(crycb->apcb0.aqm, aqm, 2);
  memcpy(crycb->apcb0.adm, adm, 2);
  VM_EVENT(kvm, 3, "SET CRYCB: apm %016lx aqm %04x adm %04x",
    apm[0], *((unsigned short *)aqm),
    *((unsigned short *)adm));
  break;
 default:
  break;
 }


 kvm_s390_sync_request_broadcast(kvm, KVM_REQ_VSIE_RESTART);
 kvm_s390_vcpu_unblock_all(kvm);
 mutex_unlock(&kvm->lock);
}
