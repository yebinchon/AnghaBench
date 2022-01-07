
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CMatchFinder ;


 int MatchFinder_Init_3 (int *,int ) ;
 int MatchFinder_Init_HighHash (int *) ;
 int MatchFinder_Init_LowHash (int *) ;
 int True ;

void MatchFinder_Init(CMatchFinder *p)
{
  MatchFinder_Init_HighHash(p);
  MatchFinder_Init_LowHash(p);
  MatchFinder_Init_3(p, True);
}
