
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_memory_slot {int dummy; } ;
struct kvm {int dummy; } ;
typedef int gfn_t ;
struct TYPE_2__ {int (* enable_log_dirty_pt_masked ) (struct kvm*,struct kvm_memory_slot*,int ,unsigned long) ;} ;


 int kvm_mmu_write_protect_pt_masked (struct kvm*,struct kvm_memory_slot*,int ,unsigned long) ;
 TYPE_1__* kvm_x86_ops ;
 int stub1 (struct kvm*,struct kvm_memory_slot*,int ,unsigned long) ;

void kvm_arch_mmu_enable_log_dirty_pt_masked(struct kvm *kvm,
    struct kvm_memory_slot *slot,
    gfn_t gfn_offset, unsigned long mask)
{
 if (kvm_x86_ops->enable_log_dirty_pt_masked)
  kvm_x86_ops->enable_log_dirty_pt_masked(kvm, slot, gfn_offset,
    mask);
 else
  kvm_mmu_write_protect_pt_masked(kvm, slot, gfn_offset, mask);
}
