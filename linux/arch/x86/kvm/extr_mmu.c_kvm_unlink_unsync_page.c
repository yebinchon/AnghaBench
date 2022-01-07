
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_mmu_page {scalar_t__ unsync; } ;
struct TYPE_2__ {int mmu_unsync; } ;
struct kvm {TYPE_1__ stat; } ;


 int WARN_ON (int) ;
 int trace_kvm_mmu_sync_page (struct kvm_mmu_page*) ;

__attribute__((used)) static void kvm_unlink_unsync_page(struct kvm *kvm, struct kvm_mmu_page *sp)
{
 WARN_ON(!sp->unsync);
 trace_kvm_mmu_sync_page(sp);
 sp->unsync = 0;
 --kvm->stat.mmu_unsync;
}
