
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PMGC0_FAC ;
 int PMGC0_FCECE ;
 int PMGC0_PMIE ;
 int PMRN_PMGC0 ;
 int mfpmr (int ) ;
 int mtpmr (int ,int ) ;

__attribute__((used)) static void pmc_start_ctrs(int enable)
{
 u32 pmgc0 = mfpmr(PMRN_PMGC0);

 pmgc0 &= ~PMGC0_FAC;
 pmgc0 |= PMGC0_FCECE;

 if (enable)
  pmgc0 |= PMGC0_PMIE;
 else
  pmgc0 &= ~PMGC0_PMIE;

 mtpmr(PMRN_PMGC0, pmgc0);
}
