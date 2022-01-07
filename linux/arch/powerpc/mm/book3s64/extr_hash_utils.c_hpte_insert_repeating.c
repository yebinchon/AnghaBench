
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long (* hpte_insert ) (unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,int,int,int) ;int (* hpte_remove ) (unsigned long) ;} ;


 unsigned long HPTES_PER_GROUP ;
 unsigned long HPTE_V_SECONDARY ;
 unsigned long htab_hash_mask ;
 int mftb () ;
 TYPE_1__ mmu_hash_ops ;
 long stub1 (unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,int,int,int) ;
 long stub2 (unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,int,int,int) ;
 int stub3 (unsigned long) ;
 scalar_t__ unlikely (int) ;

long hpte_insert_repeating(unsigned long hash, unsigned long vpn,
      unsigned long pa, unsigned long rflags,
      unsigned long vflags, int psize, int ssize)
{
 unsigned long hpte_group;
 long slot;

repeat:
 hpte_group = (hash & htab_hash_mask) * HPTES_PER_GROUP;


 slot = mmu_hash_ops.hpte_insert(hpte_group, vpn, pa, rflags, vflags,
     psize, psize, ssize);


 if (unlikely(slot == -1)) {
  hpte_group = (~hash & htab_hash_mask) * HPTES_PER_GROUP;
  slot = mmu_hash_ops.hpte_insert(hpte_group, vpn, pa, rflags,
      vflags | HPTE_V_SECONDARY,
      psize, psize, ssize);
  if (slot == -1) {
   if (mftb() & 0x1)
    hpte_group = (hash & htab_hash_mask) *
      HPTES_PER_GROUP;

   mmu_hash_ops.hpte_remove(hpte_group);
   goto repeat;
  }
 }

 return slot;
}
