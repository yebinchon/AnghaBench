
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct kvm_vcpu {int kvm; } ;
struct kvm_mmu_page {int dummy; } ;


 int __kvm_sync_page (struct kvm_vcpu*,struct kvm_mmu_page*,struct list_head*) ;
 int kvm_unlink_unsync_page (int ,struct kvm_mmu_page*) ;

__attribute__((used)) static bool kvm_sync_page(struct kvm_vcpu *vcpu, struct kvm_mmu_page *sp,
    struct list_head *invalid_list)
{
 kvm_unlink_unsync_page(vcpu->kvm, sp);
 return __kvm_sync_page(vcpu, sp, invalid_list);
}
