
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UInt32 ;
struct TYPE_4__ {int numProbs; int * probs; int * probs_1664; } ;
typedef int SRes ;
typedef int ISzAllocPtr ;
typedef int CLzmaProps ;
typedef int CLzmaProb ;
typedef TYPE_1__ CLzmaDec ;


 scalar_t__ ISzAlloc_Alloc (int ,int) ;
 int LzmaDec_FreeProbs (TYPE_1__*,int ) ;
 int LzmaProps_GetNumProbs (int const*) ;
 int SZ_ERROR_MEM ;
 int SZ_OK ;

__attribute__((used)) static SRes LzmaDec_AllocateProbs2(CLzmaDec *p, const CLzmaProps *propNew, ISzAllocPtr alloc)
{
  UInt32 numProbs = LzmaProps_GetNumProbs(propNew);
  if (!p->probs || numProbs != p->numProbs)
  {
    LzmaDec_FreeProbs(p, alloc);
    p->probs = (CLzmaProb *)ISzAlloc_Alloc(alloc, numProbs * sizeof(CLzmaProb));
    if (!p->probs)
      return SZ_ERROR_MEM;
    p->probs_1664 = p->probs + 1664;
    p->numProbs = numProbs;
  }
  return SZ_OK;
}
