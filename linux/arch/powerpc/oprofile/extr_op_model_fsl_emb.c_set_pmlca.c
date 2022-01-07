
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PMRN_PMLCA0 ;
 int PMRN_PMLCA1 ;
 int PMRN_PMLCA2 ;
 int PMRN_PMLCA3 ;
 int PMRN_PMLCA4 ;
 int PMRN_PMLCA5 ;
 int mtpmr (int ,int ) ;
 int panic (char*) ;

__attribute__((used)) static inline void set_pmlca(int ctr, u32 pmlca)
{
 switch (ctr) {
  case 0:
   mtpmr(PMRN_PMLCA0, pmlca);
   break;
  case 1:
   mtpmr(PMRN_PMLCA1, pmlca);
   break;
  case 2:
   mtpmr(PMRN_PMLCA2, pmlca);
   break;
  case 3:
   mtpmr(PMRN_PMLCA3, pmlca);
   break;
  case 4:
   mtpmr(PMRN_PMLCA4, pmlca);
   break;
  case 5:
   mtpmr(PMRN_PMLCA5, pmlca);
   break;
  default:
   panic("Bad ctr number\n");
 }
}
