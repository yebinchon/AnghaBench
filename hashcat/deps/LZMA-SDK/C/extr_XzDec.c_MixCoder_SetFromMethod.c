
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UInt64 ;
struct TYPE_3__ {int alloc; int * ids; int * coders; } ;
typedef int SRes ;
typedef int IStateCoder ;
typedef TYPE_1__ CMixCoder ;
typedef int Byte ;


 int BraState_SetFromMethod (int *,int ,int ,int ) ;
 int Lzma2State_SetFromMethod (int *,int *,size_t,int ) ;
 int SZ_ERROR_UNSUPPORTED ;
 int SbState_SetFromMethod (int *,int ) ;



__attribute__((used)) static SRes MixCoder_SetFromMethod(CMixCoder *p, unsigned coderIndex, UInt64 methodId, Byte *outBuf, size_t outBufSize)
{
  IStateCoder *sc = &p->coders[coderIndex];
  p->ids[coderIndex] = methodId;
  switch (methodId)
  {
    case 129: return Lzma2State_SetFromMethod(sc, outBuf, outBufSize, p->alloc);



  }
  if (coderIndex == 0)
    return SZ_ERROR_UNSUPPORTED;
  return BraState_SetFromMethod(sc, methodId, 0, p->alloc);
}
