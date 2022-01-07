
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hash_pte {int dummy; } ;
struct TYPE_2__ {int shift; } ;


 unsigned long HPTES_PER_GROUP ;
 scalar_t__ HPTE_V_COMPARE (unsigned long,unsigned long) ;
 unsigned long HPTE_V_VALID ;
 unsigned long hpt_hash (unsigned long,int ,int) ;
 unsigned long hpte_encode_avpn (unsigned long,int,int) ;
 unsigned long hpte_get_old_v (struct hash_pte*) ;
 struct hash_pte* htab_address ;
 unsigned long htab_hash_mask ;
 TYPE_1__* mmu_psize_defs ;

__attribute__((used)) static long native_hpte_find(unsigned long vpn, int psize, int ssize)
{
 struct hash_pte *hptep;
 unsigned long hash;
 unsigned long i;
 long slot;
 unsigned long want_v, hpte_v;

 hash = hpt_hash(vpn, mmu_psize_defs[psize].shift, ssize);
 want_v = hpte_encode_avpn(vpn, psize, ssize);


 slot = (hash & htab_hash_mask) * HPTES_PER_GROUP;
 for (i = 0; i < HPTES_PER_GROUP; i++) {

  hptep = htab_address + slot;
  hpte_v = hpte_get_old_v(hptep);
  if (HPTE_V_COMPARE(hpte_v, want_v) && (hpte_v & HPTE_V_VALID))

   return slot;
  ++slot;
 }

 return -1;
}
