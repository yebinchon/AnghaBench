
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_rmap_head {int dummy; } ;
struct kvm {int dummy; } ;


 int __rmap_write_protect (struct kvm*,struct kvm_rmap_head*,int) ;

__attribute__((used)) static bool slot_rmap_write_protect(struct kvm *kvm,
        struct kvm_rmap_head *rmap_head)
{
 return __rmap_write_protect(kvm, rmap_head, 0);
}
