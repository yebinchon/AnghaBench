
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_userspace_memory_region {int memory_size; int guest_phys_addr; int userspace_addr; } ;
struct kvm_memory_slot {int base_gfn; int npages; } ;
struct TYPE_2__ {int gmap; } ;
struct kvm {TYPE_1__ arch; } ;
typedef enum kvm_mr_change { ____Placeholder_kvm_mr_change } kvm_mr_change ;






 int PAGE_SIZE ;
 int WARN (int,char*,int) ;
 int gmap_map_segment (int ,int ,int ,int ) ;
 int gmap_unmap_segment (int ,int,int) ;
 int pr_warn (char*) ;

void kvm_arch_commit_memory_region(struct kvm *kvm,
    const struct kvm_userspace_memory_region *mem,
    const struct kvm_memory_slot *old,
    const struct kvm_memory_slot *new,
    enum kvm_mr_change change)
{
 int rc = 0;

 switch (change) {
 case 130:
  rc = gmap_unmap_segment(kvm->arch.gmap, old->base_gfn * PAGE_SIZE,
     old->npages * PAGE_SIZE);
  break;
 case 128:
  rc = gmap_unmap_segment(kvm->arch.gmap, old->base_gfn * PAGE_SIZE,
     old->npages * PAGE_SIZE);
  if (rc)
   break;

 case 131:
  rc = gmap_map_segment(kvm->arch.gmap, mem->userspace_addr,
          mem->guest_phys_addr, mem->memory_size);
  break;
 case 129:
  break;
 default:
  WARN(1, "Unknown KVM MR CHANGE: %d\n", change);
 }
 if (rc)
  pr_warn("failed to commit memory region\n");
 return;
}
