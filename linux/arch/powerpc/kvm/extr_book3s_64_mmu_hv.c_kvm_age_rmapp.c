
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct revmap_entry {unsigned long forw; int guest_rpte; } ;
struct TYPE_4__ {unsigned long* rmap; } ;
struct kvm_memory_slot {unsigned long base_gfn; TYPE_1__ arch; } ;
struct TYPE_5__ {scalar_t__ virt; struct revmap_entry* rev; } ;
struct TYPE_6__ {TYPE_2__ hpt; } ;
struct kvm {TYPE_3__ arch; } ;
typedef int __be64 ;


 int HPTE_R_R ;
 int HPTE_V_HVLOCK ;
 int HPTE_V_VALID ;
 unsigned long KVMPPC_RMAP_INDEX ;
 unsigned long KVMPPC_RMAP_PRESENT ;
 unsigned long KVMPPC_RMAP_REFERENCED ;
 int __unlock_hpte (int *,int) ;
 int be64_to_cpu (int ) ;
 int cpu_relax () ;
 int kvmppc_clear_ref_hpte (struct kvm*,int *,unsigned long) ;
 int lock_rmap (unsigned long*) ;
 int note_hpte_modification (struct kvm*,struct revmap_entry*) ;
 int try_lock_hpte (int *,int) ;
 int unlock_rmap (unsigned long*) ;

__attribute__((used)) static int kvm_age_rmapp(struct kvm *kvm, struct kvm_memory_slot *memslot,
    unsigned long gfn)
{
 struct revmap_entry *rev = kvm->arch.hpt.rev;
 unsigned long head, i, j;
 __be64 *hptep;
 int ret = 0;
 unsigned long *rmapp;

 rmapp = &memslot->arch.rmap[gfn - memslot->base_gfn];
 retry:
 lock_rmap(rmapp);
 if (*rmapp & KVMPPC_RMAP_REFERENCED) {
  *rmapp &= ~KVMPPC_RMAP_REFERENCED;
  ret = 1;
 }
 if (!(*rmapp & KVMPPC_RMAP_PRESENT)) {
  unlock_rmap(rmapp);
  return ret;
 }

 i = head = *rmapp & KVMPPC_RMAP_INDEX;
 do {
  hptep = (__be64 *) (kvm->arch.hpt.virt + (i << 4));
  j = rev[i].forw;


  if (!(be64_to_cpu(hptep[1]) & HPTE_R_R))
   continue;

  if (!try_lock_hpte(hptep, HPTE_V_HVLOCK)) {

   unlock_rmap(rmapp);
   while (be64_to_cpu(hptep[0]) & HPTE_V_HVLOCK)
    cpu_relax();
   goto retry;
  }


  if ((be64_to_cpu(hptep[0]) & HPTE_V_VALID) &&
      (be64_to_cpu(hptep[1]) & HPTE_R_R)) {
   kvmppc_clear_ref_hpte(kvm, hptep, i);
   if (!(rev[i].guest_rpte & HPTE_R_R)) {
    rev[i].guest_rpte |= HPTE_R_R;
    note_hpte_modification(kvm, &rev[i]);
   }
   ret = 1;
  }
  __unlock_hpte(hptep, be64_to_cpu(hptep[0]));
 } while ((i = j) != head);

 unlock_rmap(rmapp);
 return ret;
}
