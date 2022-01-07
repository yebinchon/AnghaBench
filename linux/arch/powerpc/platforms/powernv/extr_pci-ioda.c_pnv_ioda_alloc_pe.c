
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int total_pe_num; int pe_alloc; } ;
struct pnv_phb {TYPE_1__ ioda; } ;
struct pnv_ioda_pe {int dummy; } ;


 struct pnv_ioda_pe* pnv_ioda_init_pe (struct pnv_phb*,long) ;
 int test_and_set_bit (long,int ) ;

__attribute__((used)) static struct pnv_ioda_pe *pnv_ioda_alloc_pe(struct pnv_phb *phb)
{
 long pe;

 for (pe = phb->ioda.total_pe_num - 1; pe >= 0; pe--) {
  if (!test_and_set_bit(pe, phb->ioda.pe_alloc))
   return pnv_ioda_init_pe(phb, pe);
 }

 return ((void*)0);
}
