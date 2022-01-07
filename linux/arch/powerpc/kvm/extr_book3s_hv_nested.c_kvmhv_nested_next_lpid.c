
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_nested_lpid; scalar_t__* nested_guests; } ;
struct kvm {int mmu_lock; TYPE_1__ arch; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int kvmhv_nested_next_lpid(struct kvm *kvm, int lpid)
{
 int ret = -1;

 spin_lock(&kvm->mmu_lock);
 while (++lpid <= kvm->arch.max_nested_lpid) {
  if (kvm->arch.nested_guests[lpid]) {
   ret = lpid;
   break;
  }
 }
 spin_unlock(&kvm->mmu_lock);
 return ret;
}
