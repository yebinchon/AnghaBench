
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UInt64 ;
struct TYPE_3__ {int * coders; } ;
typedef int SRes ;
typedef int IStateCoder ;
typedef TYPE_1__ CMixCoder ;
typedef int Byte ;


 int Lzma2State_ResetOutBuf (int *,int *,size_t) ;
 int SZ_ERROR_UNSUPPORTED ;


__attribute__((used)) static SRes MixCoder_ResetFromMethod(CMixCoder *p, unsigned coderIndex, UInt64 methodId, Byte *outBuf, size_t outBufSize)
{
  IStateCoder *sc = &p->coders[coderIndex];
  switch (methodId)
  {
    case 128: return Lzma2State_ResetOutBuf(sc, outBuf, outBufSize);
  }
  return SZ_ERROR_UNSUPPORTED;
}
