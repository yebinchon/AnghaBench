
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct hash_pte {int v; int r; } ;
struct TYPE_2__ {unsigned long shift; } ;


 unsigned long HPTES_PER_GROUP ;
 scalar_t__ HPTE_V_COMPARE (int,unsigned long) ;
 int HPTE_V_VALID ;
 long H_SUCCESS ;
 unsigned long get_kernel_vsid (unsigned long,int) ;
 unsigned long hpt_hash (unsigned long,unsigned long,int) ;
 unsigned long hpt_vpn (unsigned long,unsigned long,int) ;
 unsigned long hpte_encode_avpn (unsigned long,int,int) ;
 unsigned long htab_hash_mask ;
 int mmu_kernel_ssize ;
 TYPE_1__* mmu_psize_defs ;
 long plpar_pte_read_4 (int ,unsigned long,void*) ;

__attribute__((used)) static int pseries_find(unsigned long ea, int psize, bool primary, u64 *v, u64 *r)
{
 struct hash_pte ptes[4];
 unsigned long vsid, vpn, hash, hpte_group, want_v;
 int i, j, ssize = mmu_kernel_ssize;
 long lpar_rc = 0;
 unsigned long shift = mmu_psize_defs[psize].shift;


 vsid = get_kernel_vsid(ea, ssize);
 vpn = hpt_vpn(ea, vsid, ssize);
 hash = hpt_hash(vpn, shift, ssize);
 want_v = hpte_encode_avpn(vpn, psize, ssize);


 if (!primary)
  hash = ~hash;
 hpte_group = (hash & htab_hash_mask) * HPTES_PER_GROUP;

 for (i = 0; i < HPTES_PER_GROUP; i += 4, hpte_group += 4) {
  lpar_rc = plpar_pte_read_4(0, hpte_group, (void *)ptes);

  if (lpar_rc != H_SUCCESS)
   continue;
  for (j = 0; j < 4; j++) {
   if (HPTE_V_COMPARE(ptes[j].v, want_v) &&
     (ptes[j].v & HPTE_V_VALID)) {

    *v = ptes[j].v;
    *r = ptes[j].r;
    return 0;
   }
  }
 }
 return -1;
}
