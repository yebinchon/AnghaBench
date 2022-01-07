
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
 int mfpmr (int ) ;
 int panic (char*) ;

__attribute__((used)) static inline u32 get_pmlca(int ctr)
{
 u32 pmlca;

 switch (ctr) {
  case 0:
   pmlca = mfpmr(PMRN_PMLCA0);
   break;
  case 1:
   pmlca = mfpmr(PMRN_PMLCA1);
   break;
  case 2:
   pmlca = mfpmr(PMRN_PMLCA2);
   break;
  case 3:
   pmlca = mfpmr(PMRN_PMLCA3);
   break;
  case 4:
   pmlca = mfpmr(PMRN_PMLCA4);
   break;
  case 5:
   pmlca = mfpmr(PMRN_PMLCA5);
   break;
  default:
   panic("Bad ctr number\n");
 }

 return pmlca;
}
