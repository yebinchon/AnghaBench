
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct revmap_entry {unsigned long guest_rpte; } ;
struct kvm_hpt_info {int order; struct revmap_entry* rev; scalar_t__ virt; } ;
struct kvm_resize_hpt {struct kvm_hpt_info hpt; struct kvm* kvm; } ;
struct TYPE_4__ {unsigned long* rmap; } ;
struct kvm_memory_slot {unsigned long base_gfn; TYPE_2__ arch; } ;
struct TYPE_3__ {struct kvm_hpt_info hpt; } ;
struct kvm {int srcu; TYPE_1__ arch; } ;
typedef int __be64 ;


 int BUG_ON (int) ;
 int CPU_FTR_ARCH_300 ;
 int EIO ;
 int ENOSPC ;
 unsigned long HPTES_PER_GROUP ;
 unsigned long HPTE_V_1TB_SEG ;
 unsigned long HPTE_V_ABSENT ;
 unsigned long HPTE_V_AVPN_VAL (unsigned long) ;
 unsigned long HPTE_V_BOLTED ;
 int HPTE_V_HVLOCK ;
 unsigned long HPTE_V_SECONDARY ;
 unsigned long HPTE_V_VALID ;
 struct kvm_memory_slot* __gfn_to_memslot (int ,unsigned long) ;
 unsigned long be64_to_cpu (int ) ;
 scalar_t__ cpu_has_feature (int ) ;
 int cpu_relax () ;
 int cpu_to_be64 (unsigned long) ;
 unsigned long hpte_new_to_old_r (unsigned long) ;
 unsigned long hpte_new_to_old_v (unsigned long,unsigned long) ;
 unsigned long hpte_old_to_new_r (unsigned long,unsigned long) ;
 unsigned long hpte_old_to_new_v (unsigned long) ;
 unsigned long hpte_rpn (unsigned long,unsigned long) ;
 int kvm_memslots (struct kvm*) ;
 unsigned long kvmppc_actual_pgsz (unsigned long,unsigned long) ;
 int kvmppc_hpte_base_page_shift (unsigned long,unsigned long) ;
 int kvmppc_unmap_hpte (struct kvm*,unsigned long,struct kvm_memory_slot*,unsigned long*,unsigned long) ;
 int lock_rmap (unsigned long*) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;
 int try_lock_hpte (int *,int ) ;
 int unlock_hpte (int *,unsigned long) ;
 int unlock_rmap (unsigned long*) ;

__attribute__((used)) static unsigned long resize_hpt_rehash_hpte(struct kvm_resize_hpt *resize,
         unsigned long idx)
{
 struct kvm *kvm = resize->kvm;
 struct kvm_hpt_info *old = &kvm->arch.hpt;
 struct kvm_hpt_info *new = &resize->hpt;
 unsigned long old_hash_mask = (1ULL << (old->order - 7)) - 1;
 unsigned long new_hash_mask = (1ULL << (new->order - 7)) - 1;
 __be64 *hptep, *new_hptep;
 unsigned long vpte, rpte, guest_rpte;
 int ret;
 struct revmap_entry *rev;
 unsigned long apsize, avpn, pteg, hash;
 unsigned long new_idx, new_pteg, replace_vpte;
 int pshift;

 hptep = (__be64 *)(old->virt + (idx << 4));




 vpte = be64_to_cpu(hptep[0]);
 if (!(vpte & HPTE_V_VALID) && !(vpte & HPTE_V_ABSENT))
  return 0;

 while (!try_lock_hpte(hptep, HPTE_V_HVLOCK))
  cpu_relax();

 vpte = be64_to_cpu(hptep[0]);

 ret = 0;
 if (!(vpte & HPTE_V_VALID) && !(vpte & HPTE_V_ABSENT))

  goto out;

 if (cpu_has_feature(CPU_FTR_ARCH_300)) {
  rpte = be64_to_cpu(hptep[1]);
  vpte = hpte_new_to_old_v(vpte, rpte);
 }


 rev = &old->rev[idx];
 guest_rpte = rev->guest_rpte;

 ret = -EIO;
 apsize = kvmppc_actual_pgsz(vpte, guest_rpte);
 if (!apsize)
  goto out;

 if (vpte & HPTE_V_VALID) {
  unsigned long gfn = hpte_rpn(guest_rpte, apsize);
  int srcu_idx = srcu_read_lock(&kvm->srcu);
  struct kvm_memory_slot *memslot =
   __gfn_to_memslot(kvm_memslots(kvm), gfn);

  if (memslot) {
   unsigned long *rmapp;
   rmapp = &memslot->arch.rmap[gfn - memslot->base_gfn];

   lock_rmap(rmapp);
   kvmppc_unmap_hpte(kvm, idx, memslot, rmapp, gfn);
   unlock_rmap(rmapp);
  }

  srcu_read_unlock(&kvm->srcu, srcu_idx);
 }


 vpte = be64_to_cpu(hptep[0]);
 BUG_ON(vpte & HPTE_V_VALID);
 BUG_ON(!(vpte & HPTE_V_ABSENT));

 ret = 0;
 if (!(vpte & HPTE_V_BOLTED))
  goto out;

 rpte = be64_to_cpu(hptep[1]);

 if (cpu_has_feature(CPU_FTR_ARCH_300)) {
  vpte = hpte_new_to_old_v(vpte, rpte);
  rpte = hpte_new_to_old_r(rpte);
 }

 pshift = kvmppc_hpte_base_page_shift(vpte, rpte);
 avpn = HPTE_V_AVPN_VAL(vpte) & ~(((1ul << pshift) - 1) >> 23);
 pteg = idx / HPTES_PER_GROUP;
 if (vpte & HPTE_V_SECONDARY)
  pteg = ~pteg;

 if (!(vpte & HPTE_V_1TB_SEG)) {
  unsigned long offset, vsid;


  offset = (avpn & 0x1f) << 23;
  vsid = avpn >> 5;

  if (pshift < 23)
   offset |= ((vsid ^ pteg) & old_hash_mask) << pshift;

  hash = vsid ^ (offset >> pshift);
 } else {
  unsigned long offset, vsid;


  offset = (avpn & 0x1ffff) << 23;
  vsid = avpn >> 17;
  if (pshift < 23)
   offset |= ((vsid ^ (vsid << 25) ^ pteg) & old_hash_mask) << pshift;

  hash = vsid ^ (vsid << 25) ^ (offset >> pshift);
 }

 new_pteg = hash & new_hash_mask;
 if (vpte & HPTE_V_SECONDARY)
  new_pteg = ~hash & new_hash_mask;

 new_idx = new_pteg * HPTES_PER_GROUP + (idx % HPTES_PER_GROUP);
 new_hptep = (__be64 *)(new->virt + (new_idx << 4));

 replace_vpte = be64_to_cpu(new_hptep[0]);
 if (cpu_has_feature(CPU_FTR_ARCH_300)) {
  unsigned long replace_rpte = be64_to_cpu(new_hptep[1]);
  replace_vpte = hpte_new_to_old_v(replace_vpte, replace_rpte);
 }

 if (replace_vpte & (HPTE_V_VALID | HPTE_V_ABSENT)) {
  BUG_ON(new->order >= old->order);

  if (replace_vpte & HPTE_V_BOLTED) {
   if (vpte & HPTE_V_BOLTED)

    ret = -ENOSPC;

   goto out;
  }


 }

 if (cpu_has_feature(CPU_FTR_ARCH_300)) {
  rpte = hpte_old_to_new_r(vpte, rpte);
  vpte = hpte_old_to_new_v(vpte);
 }

 new_hptep[1] = cpu_to_be64(rpte);
 new->rev[new_idx].guest_rpte = guest_rpte;

 new_hptep[0] = cpu_to_be64(vpte);
 unlock_hpte(new_hptep, vpte);

out:
 unlock_hpte(hptep, vpte);
 return ret;
}
