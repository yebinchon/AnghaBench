
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CMatchFinder ;


 int MatchFinder_MoveBlock (int *) ;
 scalar_t__ MatchFinder_NeedMove (int *) ;
 int MatchFinder_ReadBlock (int *) ;

__attribute__((used)) static void MatchFinder_CheckAndMoveAndRead(CMatchFinder *p)
{
  if (MatchFinder_NeedMove(p))
    MatchFinder_MoveBlock(p);
  MatchFinder_ReadBlock(p);
}
