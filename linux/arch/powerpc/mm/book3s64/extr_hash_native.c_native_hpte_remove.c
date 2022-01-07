
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_pte {scalar_t__ v; } ;


 int DBG_LOW (char*,unsigned long) ;
 int HPTES_PER_GROUP ;
 unsigned long HPTE_V_BOLTED ;
 unsigned long HPTE_V_VALID ;
 unsigned long be64_to_cpu (scalar_t__) ;
 struct hash_pte* htab_address ;
 int mftb () ;
 int native_lock_hpte (struct hash_pte*) ;
 int native_unlock_hpte (struct hash_pte*) ;

__attribute__((used)) static long native_hpte_remove(unsigned long hpte_group)
{
 struct hash_pte *hptep;
 int i;
 int slot_offset;
 unsigned long hpte_v;

 DBG_LOW("    remove(group=%lx)\n", hpte_group);


 slot_offset = mftb() & 0x7;

 for (i = 0; i < HPTES_PER_GROUP; i++) {
  hptep = htab_address + hpte_group + slot_offset;
  hpte_v = be64_to_cpu(hptep->v);

  if ((hpte_v & HPTE_V_VALID) && !(hpte_v & HPTE_V_BOLTED)) {

   native_lock_hpte(hptep);
   hpte_v = be64_to_cpu(hptep->v);
   if ((hpte_v & HPTE_V_VALID)
       && !(hpte_v & HPTE_V_BOLTED))
    break;
   native_unlock_hpte(hptep);
  }

  slot_offset++;
  slot_offset &= 0x7;
 }

 if (i == HPTES_PER_GROUP)
  return -1;


 hptep->v = 0;

 return i;
}
