
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PMRN_PMC0 ;
 int PMRN_PMC1 ;
 int PMRN_PMC2 ;
 int PMRN_PMC3 ;
 int PMRN_PMC4 ;
 int PMRN_PMC5 ;
 int mtpmr (int ,unsigned int) ;

__attribute__((used)) static inline void ctr_write(unsigned int i, unsigned int val)
{
 switch(i) {
  case 0:
   mtpmr(PMRN_PMC0, val);
   break;
  case 1:
   mtpmr(PMRN_PMC1, val);
   break;
  case 2:
   mtpmr(PMRN_PMC2, val);
   break;
  case 3:
   mtpmr(PMRN_PMC3, val);
   break;
  case 4:
   mtpmr(PMRN_PMC4, val);
   break;
  case 5:
   mtpmr(PMRN_PMC5, val);
   break;
  default:
   break;
 }
}
