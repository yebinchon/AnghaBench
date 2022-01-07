
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * litProbs; } ;
struct TYPE_5__ {TYPE_1__ saveState; int * litProbs; } ;
typedef int ISzAllocPtr ;
typedef TYPE_2__ CLzmaEnc ;


 int ISzAlloc_Free (int ,int *) ;

void LzmaEnc_FreeLits(CLzmaEnc *p, ISzAllocPtr alloc)
{
  ISzAlloc_Free(alloc, p->litProbs);
  ISzAlloc_Free(alloc, p->saveState.litProbs);
  p->litProbs = ((void*)0);
  p->saveState.litProbs = ((void*)0);
}
