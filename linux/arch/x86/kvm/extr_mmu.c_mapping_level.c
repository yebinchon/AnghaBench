
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int kvm; } ;
struct kvm_memory_slot {int dummy; } ;
typedef int gfn_t ;
struct TYPE_2__ {int (* get_lpage_level ) () ;} ;


 int PT_DIRECTORY_LEVEL ;
 int PT_PAGE_TABLE_LEVEL ;
 scalar_t__ __mmu_gfn_lpage_is_disallowed (int ,int,struct kvm_memory_slot*) ;
 int host_mapping_level (int ,int ) ;
 struct kvm_memory_slot* kvm_vcpu_gfn_to_memslot (struct kvm_vcpu*,int ) ;
 TYPE_1__* kvm_x86_ops ;
 int memslot_valid_for_gpte (struct kvm_memory_slot*,int) ;
 int min (int ,int) ;
 int stub1 () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int mapping_level(struct kvm_vcpu *vcpu, gfn_t large_gfn,
    bool *force_pt_level)
{
 int host_level, level, max_level;
 struct kvm_memory_slot *slot;

 if (unlikely(*force_pt_level))
  return PT_PAGE_TABLE_LEVEL;

 slot = kvm_vcpu_gfn_to_memslot(vcpu, large_gfn);
 *force_pt_level = !memslot_valid_for_gpte(slot, 1);
 if (unlikely(*force_pt_level))
  return PT_PAGE_TABLE_LEVEL;

 host_level = host_mapping_level(vcpu->kvm, large_gfn);

 if (host_level == PT_PAGE_TABLE_LEVEL)
  return host_level;

 max_level = min(kvm_x86_ops->get_lpage_level(), host_level);

 for (level = PT_DIRECTORY_LEVEL; level <= max_level; ++level)
  if (__mmu_gfn_lpage_is_disallowed(large_gfn, level, slot))
   break;

 return level - 1;
}
