
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PMLCA_FC ;
 int PMLCA_FCM0 ;
 int PMLCA_FCM1 ;
 int PMLCA_FCS ;
 int PMLCA_FCU ;
 int PMRN_PMLCA0 ;
 int PMRN_PMLCA1 ;
 int PMRN_PMLCA2 ;
 int PMRN_PMLCA3 ;
 int PMRN_PMLCA4 ;
 int PMRN_PMLCA5 ;
 int PMRN_PMLCB0 ;
 int PMRN_PMLCB1 ;
 int PMRN_PMLCB2 ;
 int PMRN_PMLCB3 ;
 int PMRN_PMLCB4 ;
 int PMRN_PMLCB5 ;
 int mtpmr (int ,int) ;
 int panic (char*) ;

__attribute__((used)) static void init_pmc_stop(int ctr)
{
 u32 pmlca = (PMLCA_FC | PMLCA_FCS | PMLCA_FCU |
   PMLCA_FCM1 | PMLCA_FCM0);
 u32 pmlcb = 0;

 switch (ctr) {
  case 0:
   mtpmr(PMRN_PMLCA0, pmlca);
   mtpmr(PMRN_PMLCB0, pmlcb);
   break;
  case 1:
   mtpmr(PMRN_PMLCA1, pmlca);
   mtpmr(PMRN_PMLCB1, pmlcb);
   break;
  case 2:
   mtpmr(PMRN_PMLCA2, pmlca);
   mtpmr(PMRN_PMLCB2, pmlcb);
   break;
  case 3:
   mtpmr(PMRN_PMLCA3, pmlca);
   mtpmr(PMRN_PMLCB3, pmlcb);
   break;
  case 4:
   mtpmr(PMRN_PMLCA4, pmlca);
   mtpmr(PMRN_PMLCB4, pmlcb);
   break;
  case 5:
   mtpmr(PMRN_PMLCA5, pmlca);
   mtpmr(PMRN_PMLCB5, pmlcb);
   break;
  default:
   panic("Bad ctr number!\n");
 }
}
