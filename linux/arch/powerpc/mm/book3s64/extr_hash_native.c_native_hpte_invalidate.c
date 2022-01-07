
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_pte {scalar_t__ v; } ;


 int DBG_LOW (char*,unsigned long,unsigned long) ;
 scalar_t__ HPTE_V_COMPARE (unsigned long,unsigned long) ;
 unsigned long HPTE_V_VALID ;
 unsigned long hpte_encode_avpn (unsigned long,int,int) ;
 unsigned long hpte_get_old_v (struct hash_pte*) ;
 struct hash_pte* htab_address ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int native_lock_hpte (struct hash_pte*) ;
 int native_unlock_hpte (struct hash_pte*) ;
 int tlbie (unsigned long,int,int,int,int) ;

__attribute__((used)) static void native_hpte_invalidate(unsigned long slot, unsigned long vpn,
       int bpsize, int apsize, int ssize, int local)
{
 struct hash_pte *hptep = htab_address + slot;
 unsigned long hpte_v;
 unsigned long want_v;
 unsigned long flags;

 local_irq_save(flags);

 DBG_LOW("    invalidate(vpn=%016lx, hash: %lx)\n", vpn, slot);

 want_v = hpte_encode_avpn(vpn, bpsize, ssize);
 hpte_v = hpte_get_old_v(hptep);

 if (HPTE_V_COMPARE(hpte_v, want_v) && (hpte_v & HPTE_V_VALID)) {
  native_lock_hpte(hptep);

  hpte_v = hpte_get_old_v(hptep);

  if (HPTE_V_COMPARE(hpte_v, want_v) && (hpte_v & HPTE_V_VALID))

   hptep->v = 0;
  else
   native_unlock_hpte(hptep);
 }







 tlbie(vpn, bpsize, apsize, ssize, local);

 local_irq_restore(flags);
}
