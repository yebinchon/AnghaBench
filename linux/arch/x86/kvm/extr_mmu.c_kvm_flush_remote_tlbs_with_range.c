
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_tlb_range {int dummy; } ;
struct kvm {int dummy; } ;
struct TYPE_2__ {int (* tlb_remote_flush_with_range ) (struct kvm*,struct kvm_tlb_range*) ;} ;


 int ENOTSUPP ;
 int kvm_flush_remote_tlbs (struct kvm*) ;
 TYPE_1__* kvm_x86_ops ;
 int stub1 (struct kvm*,struct kvm_tlb_range*) ;

__attribute__((used)) static void kvm_flush_remote_tlbs_with_range(struct kvm *kvm,
  struct kvm_tlb_range *range)
{
 int ret = -ENOTSUPP;

 if (range && kvm_x86_ops->tlb_remote_flush_with_range)
  ret = kvm_x86_ops->tlb_remote_flush_with_range(kvm, range);

 if (ret)
  kvm_flush_remote_tlbs(kvm);
}
