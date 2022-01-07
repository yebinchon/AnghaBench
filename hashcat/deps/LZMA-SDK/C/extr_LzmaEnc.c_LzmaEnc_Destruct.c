
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rc; int matchFinderBase; int matchFinderMt; } ;
typedef int ISzAllocPtr ;
typedef TYPE_1__ CLzmaEnc ;


 int LzmaEnc_FreeLits (TYPE_1__*,int ) ;
 int MatchFinderMt_Destruct (int *,int ) ;
 int MatchFinder_Free (int *,int ) ;
 int RangeEnc_Free (int *,int ) ;

void LzmaEnc_Destruct(CLzmaEnc *p, ISzAllocPtr alloc, ISzAllocPtr allocBig)
{

  MatchFinderMt_Destruct(&p->matchFinderMt, allocBig);


  MatchFinder_Free(&p->matchFinderBase, allocBig);
  LzmaEnc_FreeLits(p, alloc);
  RangeEnc_Free(&p->rc, alloc);
}
