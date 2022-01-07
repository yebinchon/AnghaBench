
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memory_slot {int dummy; } ;
struct kvm {int dummy; } ;
typedef int gfn_t ;


 int kvm_mips_flush_gpa_pt (struct kvm*,int ,int ) ;

__attribute__((used)) static int kvm_unmap_hva_handler(struct kvm *kvm, gfn_t gfn, gfn_t gfn_end,
     struct kvm_memory_slot *memslot, void *data)
{
 kvm_mips_flush_gpa_pt(kvm, gfn, gfn_end);
 return 1;
}
