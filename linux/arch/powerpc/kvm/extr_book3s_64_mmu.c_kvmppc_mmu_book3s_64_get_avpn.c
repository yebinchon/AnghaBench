
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvmppc_slb {int vsid; } ;
typedef int gva_t ;


 int kvmppc_mmu_book3s_64_get_page (struct kvmppc_slb*,int ) ;
 int kvmppc_mmu_book3s_64_get_pagesize (struct kvmppc_slb*) ;
 int kvmppc_slb_sid_shift (struct kvmppc_slb*) ;

__attribute__((used)) static u64 kvmppc_mmu_book3s_64_get_avpn(struct kvmppc_slb *slbe, gva_t eaddr)
{
 int p = kvmppc_mmu_book3s_64_get_pagesize(slbe);
 u64 avpn;

 avpn = kvmppc_mmu_book3s_64_get_page(slbe, eaddr);
 avpn |= slbe->vsid << (kvmppc_slb_sid_shift(slbe) - p);

 if (p < 16)
  avpn >>= ((80 - p) - 56) - 8;
 else
  avpn <<= p - 16;

 return avpn;
}
