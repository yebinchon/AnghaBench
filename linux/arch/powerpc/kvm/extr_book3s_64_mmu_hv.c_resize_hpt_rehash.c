
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_resize_hpt {struct kvm* kvm; } ;
struct TYPE_2__ {int hpt; } ;
struct kvm {TYPE_1__ arch; } ;


 unsigned long kvmppc_hpt_npte (int *) ;
 int resize_hpt_rehash_hpte (struct kvm_resize_hpt*,unsigned long) ;

__attribute__((used)) static int resize_hpt_rehash(struct kvm_resize_hpt *resize)
{
 struct kvm *kvm = resize->kvm;
 unsigned long i;
 int rc;

 for (i = 0; i < kvmppc_hpt_npte(&kvm->arch.hpt); i++) {
  rc = resize_hpt_rehash_hpte(resize, i);
  if (rc != 0)
   return rc;
 }

 return 0;
}
