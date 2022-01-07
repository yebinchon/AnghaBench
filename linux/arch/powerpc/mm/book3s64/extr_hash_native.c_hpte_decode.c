
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hash_pte {int r; int v; } ;
struct TYPE_2__ {int shift; unsigned long avpnm; } ;


 int CPU_FTR_ARCH_300 ;
 unsigned long HPTES_PER_GROUP ;
 unsigned long HPTE_V_AVPN_VAL (unsigned long) ;
 unsigned long HPTE_V_LARGE ;
 unsigned long HPTE_V_SECONDARY ;
 unsigned long HPTE_V_SSIZE_SHIFT ;
 int LP_BITS ;
 unsigned long LP_SHIFT ;
 int MMU_PAGE_4K ;


 unsigned long SID_SHIFT ;
 unsigned long SID_SHIFT_1T ;
 unsigned long VPN_SHIFT ;
 unsigned long be64_to_cpu (int ) ;
 scalar_t__ cpu_has_feature (int ) ;
 unsigned long hpte_new_to_old_r (unsigned long) ;
 unsigned long hpte_new_to_old_v (unsigned long,unsigned long) ;
 int* hpte_page_sizes ;
 unsigned long htab_hash_mask ;
 TYPE_1__* mmu_psize_defs ;

__attribute__((used)) static void hpte_decode(struct hash_pte *hpte, unsigned long slot,
   int *psize, int *apsize, int *ssize, unsigned long *vpn)
{
 unsigned long avpn, pteg, vpi;
 unsigned long hpte_v = be64_to_cpu(hpte->v);
 unsigned long hpte_r = be64_to_cpu(hpte->r);
 unsigned long vsid, seg_off;
 int size, a_size, shift;

 unsigned int lp = (hpte_r >> LP_SHIFT) & ((1 << LP_BITS) - 1);

 if (cpu_has_feature(CPU_FTR_ARCH_300)) {
  hpte_v = hpte_new_to_old_v(hpte_v, hpte_r);
  hpte_r = hpte_new_to_old_r(hpte_r);
 }
 if (!(hpte_v & HPTE_V_LARGE)) {
  size = MMU_PAGE_4K;
  a_size = MMU_PAGE_4K;
 } else {
  size = hpte_page_sizes[lp] & 0xf;
  a_size = hpte_page_sizes[lp] >> 4;
 }

 *ssize = hpte_v >> HPTE_V_SSIZE_SHIFT;
 shift = mmu_psize_defs[size].shift;

 avpn = (HPTE_V_AVPN_VAL(hpte_v) & ~mmu_psize_defs[size].avpnm);
 pteg = slot / HPTES_PER_GROUP;
 if (hpte_v & HPTE_V_SECONDARY)
  pteg = ~pteg;

 switch (*ssize) {
 case 128:

  seg_off = (avpn & 0x1f) << 23;
  vsid = avpn >> 5;

  if (shift < 23) {
   vpi = (vsid ^ pteg) & htab_hash_mask;
   seg_off |= vpi << shift;
  }
  *vpn = vsid << (SID_SHIFT - VPN_SHIFT) | seg_off >> VPN_SHIFT;
  break;
 case 129:

  seg_off = (avpn & 0x1ffff) << 23;
  vsid = avpn >> 17;
  if (shift < 23) {
   vpi = (vsid ^ (vsid << 25) ^ pteg) & htab_hash_mask;
   seg_off |= vpi << shift;
  }
  *vpn = vsid << (SID_SHIFT_1T - VPN_SHIFT) | seg_off >> VPN_SHIFT;
  break;
 default:
  *vpn = size = 0;
 }
 *psize = size;
 *apsize = a_size;
}
