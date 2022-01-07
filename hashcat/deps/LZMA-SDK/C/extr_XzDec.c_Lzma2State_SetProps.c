
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int decoder; scalar_t__ outBufMode; } ;
typedef int SRes ;
typedef int ISzAllocPtr ;
typedef TYPE_1__ CLzma2Dec_Spec ;
typedef int Byte ;


 int Lzma2Dec_Allocate (int *,int const,int ) ;
 int Lzma2Dec_AllocateProbs (int *,int const,int ) ;
 int SZ_ERROR_UNSUPPORTED ;

__attribute__((used)) static SRes Lzma2State_SetProps(void *pp, const Byte *props, size_t propSize, ISzAllocPtr alloc)
{
  if (propSize != 1)
    return SZ_ERROR_UNSUPPORTED;
  {
    CLzma2Dec_Spec *p = (CLzma2Dec_Spec *)pp;
    if (p->outBufMode)
      return Lzma2Dec_AllocateProbs(&p->decoder, props[0], alloc);
    else
      return Lzma2Dec_Allocate(&p->decoder, props[0], alloc);
  }
}
