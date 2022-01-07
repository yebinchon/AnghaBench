
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_nested_guest {int dummy; } ;
struct TYPE_2__ {int max_nested_lpid; struct kvm_nested_guest** nested_guests; } ;
struct kvm {TYPE_1__ arch; } ;



__attribute__((used)) static struct kvm_nested_guest *kvmhv_find_nested(struct kvm *kvm, int lpid)
{
 if (lpid > kvm->arch.max_nested_lpid)
  return ((void*)0);
 return kvm->arch.nested_guests[lpid];
}
