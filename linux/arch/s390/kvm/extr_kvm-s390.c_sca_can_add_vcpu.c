
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ use_esca; } ;
struct kvm {int lock; TYPE_1__ arch; } ;
struct TYPE_4__ {int has_64bscao; int has_esca; } ;


 unsigned int KVM_MAX_VCPUS ;
 unsigned int KVM_S390_BSCA_CPU_SLOTS ;
 unsigned int KVM_S390_ESCA_CPU_SLOTS ;
 int kvm_s390_use_sca_entries () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sca_switch_to_extended (struct kvm*) ;
 TYPE_2__ sclp ;

__attribute__((used)) static int sca_can_add_vcpu(struct kvm *kvm, unsigned int id)
{
 int rc;

 if (!kvm_s390_use_sca_entries()) {
  if (id < KVM_MAX_VCPUS)
   return 1;
  return 0;
 }
 if (id < KVM_S390_BSCA_CPU_SLOTS)
  return 1;
 if (!sclp.has_esca || !sclp.has_64bscao)
  return 0;

 mutex_lock(&kvm->lock);
 rc = kvm->arch.use_esca ? 0 : sca_switch_to_extended(kvm);
 mutex_unlock(&kvm->lock);

 return rc == 0 && id < KVM_S390_ESCA_CPU_SLOTS;
}
