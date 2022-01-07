
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int decoder; scalar_t__ outBufMode; } ;
typedef int ISzAllocPtr ;
typedef TYPE_1__ CLzma2Dec_Spec ;


 int ISzAlloc_Free (int ,void*) ;
 int Lzma2Dec_Free (int *,int ) ;
 int Lzma2Dec_FreeProbs (int *,int ) ;

__attribute__((used)) static void Lzma2State_Free(void *pp, ISzAllocPtr alloc)
{
  CLzma2Dec_Spec *p = (CLzma2Dec_Spec *)pp;
  if (p->outBufMode)
    Lzma2Dec_FreeProbs(&p->decoder, alloc);
  else
    Lzma2Dec_Free(&p->decoder, alloc);
  ISzAlloc_Free(alloc, pp);
}
