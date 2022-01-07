
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct kvm {int dummy; } ;


 int kvm_flush_remote_tlbs (struct kvm*) ;
 int kvm_mmu_commit_zap_page (struct kvm*,struct list_head*) ;
 scalar_t__ list_empty (struct list_head*) ;

__attribute__((used)) static bool kvm_mmu_remote_flush_or_zap(struct kvm *kvm,
     struct list_head *invalid_list,
     bool remote_flush)
{
 if (!remote_flush && list_empty(invalid_list))
  return 0;

 if (!list_empty(invalid_list))
  kvm_mmu_commit_zap_page(kvm, invalid_list);
 else
  kvm_flush_remote_tlbs(kvm);
 return 1;
}
