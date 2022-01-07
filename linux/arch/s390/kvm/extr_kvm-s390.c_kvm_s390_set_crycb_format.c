
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int crycbd; scalar_t__ crycb; } ;
struct TYPE_3__ {TYPE_2__ crypto; } ;
struct kvm {TYPE_1__ arch; } ;
typedef int __u32 ;


 int CRYCB_FORMAT1 ;
 int CRYCB_FORMAT2 ;
 int CRYCB_FORMAT_MASK ;
 scalar_t__ kvm_s390_apxa_installed () ;
 int test_kvm_facility (struct kvm*,int) ;

__attribute__((used)) static void kvm_s390_set_crycb_format(struct kvm *kvm)
{
 kvm->arch.crypto.crycbd = (__u32)(unsigned long) kvm->arch.crypto.crycb;


 kvm->arch.crypto.crycbd &= ~(CRYCB_FORMAT_MASK);


 if (!test_kvm_facility(kvm, 76))
  return;

 if (kvm_s390_apxa_installed())
  kvm->arch.crypto.crycbd |= CRYCB_FORMAT2;
 else
  kvm->arch.crypto.crycbd |= CRYCB_FORMAT1;
}
