
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * hashBuf; } ;
typedef int ISzAllocPtr ;
typedef TYPE_1__ CMatchFinderMt ;


 int ISzAlloc_Free (int ,int *) ;

__attribute__((used)) static void MatchFinderMt_FreeMem(CMatchFinderMt *p, ISzAllocPtr alloc)
{
  ISzAlloc_Free(alloc, p->hashBuf);
  p->hashBuf = ((void*)0);
}
