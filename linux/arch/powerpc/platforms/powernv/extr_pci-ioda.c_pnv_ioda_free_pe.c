
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pe_alloc; } ;
struct pnv_phb {TYPE_1__ ioda; } ;
struct pnv_ioda_pe {unsigned int pe_number; int npucomp; int pdev; struct pnv_phb* phb; } ;


 int WARN_ON (int ) ;
 int clear_bit (unsigned int,int ) ;
 int kfree (int ) ;
 int memset (struct pnv_ioda_pe*,int ,int) ;

__attribute__((used)) static void pnv_ioda_free_pe(struct pnv_ioda_pe *pe)
{
 struct pnv_phb *phb = pe->phb;
 unsigned int pe_num = pe->pe_number;

 WARN_ON(pe->pdev);
 WARN_ON(pe->npucomp);
 kfree(pe->npucomp);
 memset(pe, 0, sizeof(struct pnv_ioda_pe));
 clear_bit(pe_num, phb->ioda.pe_alloc);
}
