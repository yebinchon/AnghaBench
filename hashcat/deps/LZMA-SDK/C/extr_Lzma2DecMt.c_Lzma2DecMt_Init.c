
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UInt64 ;
struct TYPE_3__ {int prop; int finishMode; scalar_t__ inLim; scalar_t__ inPos; scalar_t__ inProcessed; scalar_t__ outProcessed; scalar_t__ outSize; int outSize_Defined; int * inStream; int props; } ;
typedef int SRes ;
typedef int ISeqInStream ;
typedef int CLzma2DecMtProps ;
typedef scalar_t__ CLzma2DecMtHandle ;
typedef TYPE_1__ CLzma2DecMt ;
typedef int Byte ;


 int False ;
 int Lzma2Dec_Prepare_ST (TYPE_1__*) ;
 int SZ_ERROR_UNSUPPORTED ;
 int True ;

SRes Lzma2DecMt_Init(CLzma2DecMtHandle pp,
    Byte prop,
    const CLzma2DecMtProps *props,
    const UInt64 *outDataSize, int finishMode,
    ISeqInStream *inStream)
{
  CLzma2DecMt *p = (CLzma2DecMt *)pp;

  if (prop > 40)
    return SZ_ERROR_UNSUPPORTED;

  p->prop = prop;
  p->props = *props;

  p->inStream = inStream;

  p->outSize = 0;
  p->outSize_Defined = False;
  if (outDataSize)
  {
    p->outSize_Defined = True;
    p->outSize = *outDataSize;
  }
  p->finishMode = finishMode;

  p->outProcessed = 0;
  p->inProcessed = 0;

  p->inPos = 0;
  p->inLim = 0;

  return Lzma2Dec_Prepare_ST(p);
}
