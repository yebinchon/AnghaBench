
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvmppc_slb {int dummy; } ;
typedef int gva_t ;


 int kvmppc_mmu_book3s_64_get_pagesize (struct kvmppc_slb*) ;
 int kvmppc_slb_offset_mask (struct kvmppc_slb*) ;

__attribute__((used)) static u32 kvmppc_mmu_book3s_64_get_page(struct kvmppc_slb *slbe, gva_t eaddr)
{
 int p = kvmppc_mmu_book3s_64_get_pagesize(slbe);

 return ((eaddr & kvmppc_slb_offset_mask(slbe)) >> p);
}
