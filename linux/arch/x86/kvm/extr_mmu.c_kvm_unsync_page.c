
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_vcpu {TYPE_2__* kvm; } ;
struct kvm_mmu_page {int unsync; } ;
struct TYPE_3__ {int mmu_unsync; } ;
struct TYPE_4__ {TYPE_1__ stat; } ;


 int kvm_mmu_mark_parents_unsync (struct kvm_mmu_page*) ;
 int trace_kvm_mmu_unsync_page (struct kvm_mmu_page*) ;

__attribute__((used)) static void kvm_unsync_page(struct kvm_vcpu *vcpu, struct kvm_mmu_page *sp)
{
 trace_kvm_mmu_unsync_page(sp);
 ++vcpu->kvm->stat.mmu_unsync;
 sp->unsync = 1;

 kvm_mmu_mark_parents_unsync(sp);
}
