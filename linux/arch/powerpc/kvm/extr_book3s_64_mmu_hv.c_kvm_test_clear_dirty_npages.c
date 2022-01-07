
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct revmap_entry {unsigned long forw; unsigned long guest_rpte; } ;
struct TYPE_3__ {scalar_t__ virt; struct revmap_entry* rev; } ;
struct TYPE_4__ {TYPE_1__ hpt; } ;
struct kvm {TYPE_2__ arch; } ;
typedef int __be64 ;


 unsigned long HPTE_R_C ;
 unsigned long HPTE_V_ABSENT ;
 unsigned long HPTE_V_HVLOCK ;
 unsigned long HPTE_V_VALID ;
 unsigned long KVMPPC_RMAP_INDEX ;
 unsigned long KVMPPC_RMAP_PRESENT ;
 unsigned long PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 int __unlock_hpte (int*,unsigned long) ;
 unsigned long be64_to_cpu (int) ;
 int cpu_relax () ;
 int cpu_to_be64 (unsigned long) ;
 int eieio () ;
 int hpte_is_writable (unsigned long) ;
 unsigned long kvmppc_actual_pgsz (unsigned long,unsigned long) ;
 int kvmppc_invalidate_hpte (struct kvm*,int*,unsigned long) ;
 int lock_rmap (unsigned long*) ;
 int note_hpte_modification (struct kvm*,struct revmap_entry*) ;
 int try_lock_hpte (int*,unsigned long) ;
 int unlock_rmap (unsigned long*) ;
 scalar_t__ vcpus_running (struct kvm*) ;

__attribute__((used)) static int kvm_test_clear_dirty_npages(struct kvm *kvm, unsigned long *rmapp)
{
 struct revmap_entry *rev = kvm->arch.hpt.rev;
 unsigned long head, i, j;
 unsigned long n;
 unsigned long v, r;
 __be64 *hptep;
 int npages_dirty = 0;

 retry:
 lock_rmap(rmapp);
 if (!(*rmapp & KVMPPC_RMAP_PRESENT)) {
  unlock_rmap(rmapp);
  return npages_dirty;
 }

 i = head = *rmapp & KVMPPC_RMAP_INDEX;
 do {
  unsigned long hptep1;
  hptep = (__be64 *) (kvm->arch.hpt.virt + (i << 4));
  j = rev[i].forw;
  hptep1 = be64_to_cpu(hptep[1]);
  if (!(hptep1 & HPTE_R_C) &&
      (!hpte_is_writable(hptep1) || vcpus_running(kvm)))
   continue;

  if (!try_lock_hpte(hptep, HPTE_V_HVLOCK)) {

   unlock_rmap(rmapp);
   while (hptep[0] & cpu_to_be64(HPTE_V_HVLOCK))
    cpu_relax();
   goto retry;
  }


  if (!(hptep[0] & cpu_to_be64(HPTE_V_VALID))) {
   __unlock_hpte(hptep, be64_to_cpu(hptep[0]));
   continue;
  }


  hptep[0] |= cpu_to_be64(HPTE_V_ABSENT);
  kvmppc_invalidate_hpte(kvm, hptep, i);
  v = be64_to_cpu(hptep[0]);
  r = be64_to_cpu(hptep[1]);
  if (r & HPTE_R_C) {
   hptep[1] = cpu_to_be64(r & ~HPTE_R_C);
   if (!(rev[i].guest_rpte & HPTE_R_C)) {
    rev[i].guest_rpte |= HPTE_R_C;
    note_hpte_modification(kvm, &rev[i]);
   }
   n = kvmppc_actual_pgsz(v, r);
   n = (n + PAGE_SIZE - 1) >> PAGE_SHIFT;
   if (n > npages_dirty)
    npages_dirty = n;
   eieio();
  }
  v &= ~HPTE_V_ABSENT;
  v |= HPTE_V_VALID;
  __unlock_hpte(hptep, v);
 } while ((i = j) != head);

 unlock_rmap(rmapp);
 return npages_dirty;
}
