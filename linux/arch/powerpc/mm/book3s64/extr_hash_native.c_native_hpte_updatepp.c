
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_pte {int r; } ;


 int DBG_LOW (char*,...) ;
 unsigned long HPTE_LOCAL_UPDATE ;
 unsigned long HPTE_NOHPTE_UPDATE ;
 unsigned long HPTE_R_C ;
 unsigned long HPTE_R_N ;
 unsigned long HPTE_R_PPP ;
 unsigned long HPTE_V_AVPN ;
 int HPTE_V_COMPARE (unsigned long,unsigned long) ;
 unsigned long HPTE_V_VALID ;
 unsigned long be64_to_cpu (int ) ;
 int cpu_to_be64 (unsigned long) ;
 unsigned long hpte_encode_avpn (unsigned long,int,int) ;
 unsigned long hpte_get_old_v (struct hash_pte*) ;
 struct hash_pte* htab_address ;
 int native_lock_hpte (struct hash_pte*) ;
 int native_unlock_hpte (struct hash_pte*) ;
 int tlbie (unsigned long,int,int,int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static long native_hpte_updatepp(unsigned long slot, unsigned long newpp,
     unsigned long vpn, int bpsize,
     int apsize, int ssize, unsigned long flags)
{
 struct hash_pte *hptep = htab_address + slot;
 unsigned long hpte_v, want_v;
 int ret = 0, local = 0;

 want_v = hpte_encode_avpn(vpn, bpsize, ssize);

 DBG_LOW("    update(vpn=%016lx, avpnv=%016lx, group=%lx, newpp=%lx)",
  vpn, want_v & HPTE_V_AVPN, slot, newpp);

 hpte_v = hpte_get_old_v(hptep);







 if (!HPTE_V_COMPARE(hpte_v, want_v) || !(hpte_v & HPTE_V_VALID)) {
  DBG_LOW(" -> miss\n");
  ret = -1;
 } else {
  native_lock_hpte(hptep);

  hpte_v = hpte_get_old_v(hptep);
  if (unlikely(!HPTE_V_COMPARE(hpte_v, want_v) ||
        !(hpte_v & HPTE_V_VALID))) {
   ret = -1;
  } else {
   DBG_LOW(" -> hit\n");

   hptep->r = cpu_to_be64((be64_to_cpu(hptep->r) &
      ~(HPTE_R_PPP | HPTE_R_N)) |
            (newpp & (HPTE_R_PPP | HPTE_R_N |
        HPTE_R_C)));
  }
  native_unlock_hpte(hptep);
 }

 if (flags & HPTE_LOCAL_UPDATE)
  local = 1;



 if (!(flags & HPTE_NOHPTE_UPDATE))
  tlbie(vpn, bpsize, apsize, ssize, local);

 return ret;
}
