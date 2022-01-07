
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m32_segmap; int m64_segmap; int io_segmap; } ;
struct pnv_phb {scalar_t__ type; TYPE_1__ ioda; } ;
struct pnv_ioda_pe {struct pnv_phb* phb; } ;


 int OPAL_IO_WINDOW_TYPE ;
 int OPAL_M32_WINDOW_TYPE ;
 int OPAL_M64_WINDOW_TYPE ;
 scalar_t__ PNV_PHB_IODA1 ;
 scalar_t__ PNV_PHB_IODA2 ;
 int pnv_ioda_free_pe_seg (struct pnv_ioda_pe*,int ,int ) ;

__attribute__((used)) static void pnv_ioda_release_pe_seg(struct pnv_ioda_pe *pe)
{
 struct pnv_phb *phb = pe->phb;

 if (phb->type == PNV_PHB_IODA1) {
  pnv_ioda_free_pe_seg(pe, OPAL_IO_WINDOW_TYPE,
         phb->ioda.io_segmap);
  pnv_ioda_free_pe_seg(pe, OPAL_M32_WINDOW_TYPE,
         phb->ioda.m32_segmap);
  pnv_ioda_free_pe_seg(pe, OPAL_M64_WINDOW_TYPE,
         phb->ioda.m64_segmap);
 } else if (phb->type == PNV_PHB_IODA2) {
  pnv_ioda_free_pe_seg(pe, OPAL_M32_WINDOW_TYPE,
         phb->ioda.m32_segmap);
 }
}
