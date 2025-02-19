
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_pte {void* v; void* r; } ;


 int CPU_FTR_ARCH_300 ;
 int DBG_LOW (char*,int,unsigned long,unsigned long,...) ;
 int HPTES_PER_GROUP ;
 unsigned long HPTE_V_BOLTED ;
 unsigned long HPTE_V_SECONDARY ;
 unsigned long HPTE_V_VALID ;
 unsigned long be64_to_cpu (void*) ;
 scalar_t__ cpu_has_feature (int ) ;
 void* cpu_to_be64 (unsigned long) ;
 int eieio () ;
 unsigned long hpte_encode_r (unsigned long,int,int) ;
 unsigned long hpte_encode_v (unsigned long,int,int,int) ;
 unsigned long hpte_old_to_new_r (unsigned long,unsigned long) ;
 unsigned long hpte_old_to_new_v (unsigned long) ;
 struct hash_pte* htab_address ;
 int native_lock_hpte (struct hash_pte*) ;
 int native_unlock_hpte (struct hash_pte*) ;

__attribute__((used)) static long native_hpte_insert(unsigned long hpte_group, unsigned long vpn,
   unsigned long pa, unsigned long rflags,
   unsigned long vflags, int psize, int apsize, int ssize)
{
 struct hash_pte *hptep = htab_address + hpte_group;
 unsigned long hpte_v, hpte_r;
 int i;

 if (!(vflags & HPTE_V_BOLTED)) {
  DBG_LOW("    insert(group=%lx, vpn=%016lx, pa=%016lx,"
   " rflags=%lx, vflags=%lx, psize=%d)\n",
   hpte_group, vpn, pa, rflags, vflags, psize);
 }

 for (i = 0; i < HPTES_PER_GROUP; i++) {
  if (! (be64_to_cpu(hptep->v) & HPTE_V_VALID)) {

   native_lock_hpte(hptep);
   if (! (be64_to_cpu(hptep->v) & HPTE_V_VALID))
    break;
   native_unlock_hpte(hptep);
  }

  hptep++;
 }

 if (i == HPTES_PER_GROUP)
  return -1;

 hpte_v = hpte_encode_v(vpn, psize, apsize, ssize) | vflags | HPTE_V_VALID;
 hpte_r = hpte_encode_r(pa, psize, apsize) | rflags;

 if (!(vflags & HPTE_V_BOLTED)) {
  DBG_LOW(" i=%x hpte_v=%016lx, hpte_r=%016lx\n",
   i, hpte_v, hpte_r);
 }

 if (cpu_has_feature(CPU_FTR_ARCH_300)) {
  hpte_r = hpte_old_to_new_r(hpte_v, hpte_r);
  hpte_v = hpte_old_to_new_v(hpte_v);
 }

 hptep->r = cpu_to_be64(hpte_r);

 eieio();




 hptep->v = cpu_to_be64(hpte_v);

 __asm__ __volatile__ ("ptesync" : : : "memory");

 return i | (!!(vflags & HPTE_V_SECONDARY) << 3);
}
