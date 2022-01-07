
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct revmap_entry {size_t back; unsigned long forw; } ;
struct TYPE_3__ {struct revmap_entry* rev; } ;
struct TYPE_4__ {TYPE_1__ hpt; } ;
struct kvm {TYPE_2__ arch; } ;


 unsigned long KVMPPC_RMAP_HPT ;
 unsigned long KVMPPC_RMAP_INDEX ;
 unsigned long KVMPPC_RMAP_PRESENT ;
 struct revmap_entry* real_vmalloc_addr (struct revmap_entry*) ;
 int unlock_rmap (unsigned long*) ;

void kvmppc_add_revmap_chain(struct kvm *kvm, struct revmap_entry *rev,
        unsigned long *rmap, long pte_index, int realmode)
{
 struct revmap_entry *head, *tail;
 unsigned long i;

 if (*rmap & KVMPPC_RMAP_PRESENT) {
  i = *rmap & KVMPPC_RMAP_INDEX;
  head = &kvm->arch.hpt.rev[i];
  if (realmode)
   head = real_vmalloc_addr(head);
  tail = &kvm->arch.hpt.rev[head->back];
  if (realmode)
   tail = real_vmalloc_addr(tail);
  rev->forw = i;
  rev->back = head->back;
  tail->forw = pte_index;
  head->back = pte_index;
 } else {
  rev->forw = rev->back = pte_index;
  *rmap = (*rmap & ~KVMPPC_RMAP_INDEX) |
   pte_index | KVMPPC_RMAP_PRESENT | KVMPPC_RMAP_HPT;
 }
 unlock_rmap(rmap);
}
