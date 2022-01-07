
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t dicBufSize; int * dic; } ;
struct TYPE_9__ {TYPE_1__ decoder; } ;
struct TYPE_8__ {TYPE_5__ decoder; int outBufMode; } ;
struct TYPE_7__ {int * Filter; int Code2; int Init; int SetProps; int Free; TYPE_3__* p; } ;
typedef int SRes ;
typedef int ISzAllocPtr ;
typedef TYPE_2__ IStateCoder ;
typedef TYPE_3__ CLzma2Dec_Spec ;
typedef int Byte ;


 int False ;
 scalar_t__ ISzAlloc_Alloc (int ,int) ;
 int Lzma2Dec_Construct (TYPE_5__*) ;
 int Lzma2State_Code2 ;
 int Lzma2State_Free ;
 int Lzma2State_Init ;
 int Lzma2State_SetProps ;
 int SZ_ERROR_MEM ;
 int SZ_OK ;
 int True ;

__attribute__((used)) static SRes Lzma2State_SetFromMethod(IStateCoder *p, Byte *outBuf, size_t outBufSize, ISzAllocPtr alloc)
{
  CLzma2Dec_Spec *spec = (CLzma2Dec_Spec *)p->p;
  if (!spec)
  {
    spec = (CLzma2Dec_Spec *)ISzAlloc_Alloc(alloc, sizeof(CLzma2Dec_Spec));
    if (!spec)
      return SZ_ERROR_MEM;
    p->p = spec;
    p->Free = Lzma2State_Free;
    p->SetProps = Lzma2State_SetProps;
    p->Init = Lzma2State_Init;
    p->Code2 = Lzma2State_Code2;
    p->Filter = ((void*)0);
    Lzma2Dec_Construct(&spec->decoder);
  }
  spec->outBufMode = False;
  if (outBuf)
  {
    spec->outBufMode = True;
    spec->decoder.decoder.dic = outBuf;
    spec->decoder.decoder.dicBufSize = outBufSize;
  }
  return SZ_OK;
}
