
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * rmap; } ;
struct kvm_memory_slot {TYPE_1__ arch; } ;


 int vfree (int *) ;

__attribute__((used)) static void kvmppc_core_free_memslot_hv(struct kvm_memory_slot *free,
     struct kvm_memory_slot *dont)
{
 if (!dont || free->arch.rmap != dont->arch.rmap) {
  vfree(free->arch.rmap);
  free->arch.rmap = ((void*)0);
 }
}
