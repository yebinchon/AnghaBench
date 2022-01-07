
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long* rmap; } ;
struct kvm_memory_slot {unsigned long base_gfn; TYPE_1__ arch; } ;
struct TYPE_5__ {scalar_t__ virt; } ;
struct TYPE_6__ {TYPE_2__ hpt; } ;
struct kvm {TYPE_3__ arch; } ;
typedef int __be64 ;


 int HPTE_V_HVLOCK ;
 unsigned long KVMPPC_RMAP_INDEX ;
 unsigned long KVMPPC_RMAP_PRESENT ;
 int __unlock_hpte (int *,int) ;
 int be64_to_cpu (int ) ;
 int cpu_relax () ;
 int kvmppc_unmap_hpte (struct kvm*,unsigned long,struct kvm_memory_slot*,unsigned long*,unsigned long) ;
 int lock_rmap (unsigned long*) ;
 int try_lock_hpte (int *,int) ;
 int unlock_rmap (unsigned long*) ;

__attribute__((used)) static int kvm_unmap_rmapp(struct kvm *kvm, struct kvm_memory_slot *memslot,
      unsigned long gfn)
{
 unsigned long i;
 __be64 *hptep;
 unsigned long *rmapp;

 rmapp = &memslot->arch.rmap[gfn - memslot->base_gfn];
 for (;;) {
  lock_rmap(rmapp);
  if (!(*rmapp & KVMPPC_RMAP_PRESENT)) {
   unlock_rmap(rmapp);
   break;
  }






  i = *rmapp & KVMPPC_RMAP_INDEX;
  hptep = (__be64 *) (kvm->arch.hpt.virt + (i << 4));
  if (!try_lock_hpte(hptep, HPTE_V_HVLOCK)) {

   unlock_rmap(rmapp);
   while (be64_to_cpu(hptep[0]) & HPTE_V_HVLOCK)
    cpu_relax();
   continue;
  }

  kvmppc_unmap_hpte(kvm, i, memslot, rmapp, gfn);
  unlock_rmap(rmapp);
  __unlock_hpte(hptep, be64_to_cpu(hptep[0]));
 }
 return 0;
}
