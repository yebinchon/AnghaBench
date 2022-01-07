
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kvm_device_attr {int attr; } ;
struct TYPE_5__ {int aes_kw; int dea_kw; int apie; TYPE_1__* crycb; } ;
struct TYPE_6__ {TYPE_2__ crypto; } ;
struct kvm {int lock; TYPE_3__ arch; } ;
struct TYPE_4__ {int dea_wrapping_key_mask; int aes_wrapping_key_mask; } ;


 int EINVAL ;
 int ENXIO ;
 int EOPNOTSUPP ;






 int VM_EVENT (struct kvm*,int,char*,char*) ;
 int ap_instructions_available () ;
 int get_random_bytes (int ,int) ;
 int kvm_s390_vcpu_crypto_reset_all (struct kvm*) ;
 int memset (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_kvm_facility (struct kvm*,int) ;

__attribute__((used)) static int kvm_s390_vm_set_crypto(struct kvm *kvm, struct kvm_device_attr *attr)
{
 mutex_lock(&kvm->lock);
 switch (attr->attr) {
 case 130:
  if (!test_kvm_facility(kvm, 76)) {
   mutex_unlock(&kvm->lock);
   return -EINVAL;
  }
  get_random_bytes(
   kvm->arch.crypto.crycb->aes_wrapping_key_mask,
   sizeof(kvm->arch.crypto.crycb->aes_wrapping_key_mask));
  kvm->arch.crypto.aes_kw = 1;
  VM_EVENT(kvm, 3, "%s", "ENABLE: AES keywrapping support");
  break;
 case 128:
  if (!test_kvm_facility(kvm, 76)) {
   mutex_unlock(&kvm->lock);
   return -EINVAL;
  }
  get_random_bytes(
   kvm->arch.crypto.crycb->dea_wrapping_key_mask,
   sizeof(kvm->arch.crypto.crycb->dea_wrapping_key_mask));
  kvm->arch.crypto.dea_kw = 1;
  VM_EVENT(kvm, 3, "%s", "ENABLE: DEA keywrapping support");
  break;
 case 133:
  if (!test_kvm_facility(kvm, 76)) {
   mutex_unlock(&kvm->lock);
   return -EINVAL;
  }
  kvm->arch.crypto.aes_kw = 0;
  memset(kvm->arch.crypto.crycb->aes_wrapping_key_mask, 0,
   sizeof(kvm->arch.crypto.crycb->aes_wrapping_key_mask));
  VM_EVENT(kvm, 3, "%s", "DISABLE: AES keywrapping support");
  break;
 case 131:
  if (!test_kvm_facility(kvm, 76)) {
   mutex_unlock(&kvm->lock);
   return -EINVAL;
  }
  kvm->arch.crypto.dea_kw = 0;
  memset(kvm->arch.crypto.crycb->dea_wrapping_key_mask, 0,
   sizeof(kvm->arch.crypto.crycb->dea_wrapping_key_mask));
  VM_EVENT(kvm, 3, "%s", "DISABLE: DEA keywrapping support");
  break;
 case 129:
  if (!ap_instructions_available()) {
   mutex_unlock(&kvm->lock);
   return -EOPNOTSUPP;
  }
  kvm->arch.crypto.apie = 1;
  break;
 case 132:
  if (!ap_instructions_available()) {
   mutex_unlock(&kvm->lock);
   return -EOPNOTSUPP;
  }
  kvm->arch.crypto.apie = 0;
  break;
 default:
  mutex_unlock(&kvm->lock);
  return -ENXIO;
 }

 kvm_s390_vcpu_crypto_reset_all(kvm);
 mutex_unlock(&kvm->lock);
 return 0;
}
