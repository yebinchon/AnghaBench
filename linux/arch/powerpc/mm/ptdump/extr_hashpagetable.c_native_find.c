
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u64 ;
struct hash_pte {int r; int v; } ;
struct TYPE_2__ {unsigned long shift; } ;


 unsigned long HPTES_PER_GROUP ;
 scalar_t__ HPTE_V_COMPARE (unsigned long,unsigned long) ;
 unsigned long HPTE_V_VALID ;
 void* be64_to_cpu (int ) ;
 unsigned long get_kernel_vsid (unsigned long,int) ;
 unsigned long hpt_hash (unsigned long,unsigned long,int) ;
 unsigned long hpt_vpn (unsigned long,unsigned long,int) ;
 unsigned long hpte_encode_avpn (unsigned long,int,int) ;
 struct hash_pte* htab_address ;
 unsigned long htab_hash_mask ;
 int mmu_kernel_ssize ;
 TYPE_1__* mmu_psize_defs ;

__attribute__((used)) static int native_find(unsigned long ea, int psize, bool primary, u64 *v, u64
  *r)
{
 struct hash_pte *hptep;
 unsigned long hash, vsid, vpn, hpte_group, want_v, hpte_v;
 int i, ssize = mmu_kernel_ssize;
 unsigned long shift = mmu_psize_defs[psize].shift;


 vsid = get_kernel_vsid(ea, ssize);
 vpn = hpt_vpn(ea, vsid, ssize);
 hash = hpt_hash(vpn, shift, ssize);
 want_v = hpte_encode_avpn(vpn, psize, ssize);


 if (!primary)
  hash = ~hash;
 hpte_group = (hash & htab_hash_mask) * HPTES_PER_GROUP;
 for (i = 0; i < HPTES_PER_GROUP; i++) {
  hptep = htab_address + hpte_group;
  hpte_v = be64_to_cpu(hptep->v);

  if (HPTE_V_COMPARE(hpte_v, want_v) && (hpte_v & HPTE_V_VALID)) {

   *v = be64_to_cpu(hptep->v);
   *r = be64_to_cpu(hptep->r);
   return 0;
  }
  ++hpte_group;
 }
 return -1;
}
