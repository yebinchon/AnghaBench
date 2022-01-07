
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t UInt64 ;
struct TYPE_7__ {scalar_t__ dicPos; scalar_t__ dicBufSize; int * dic; } ;
typedef scalar_t__ SizeT ;
typedef scalar_t__ SRes ;
typedef int ISzAllocPtr ;
typedef int ILookInStream ;
typedef scalar_t__ ELzmaStatus ;
typedef TYPE_1__ CLzmaDec ;
typedef int Byte ;


 scalar_t__ ILookInStream_Look (int *,void const**,size_t*) ;
 scalar_t__ ILookInStream_Skip (int *,scalar_t__) ;
 int LZMA_FINISH_END ;
 scalar_t__ LZMA_STATUS_FINISHED_WITH_MARK ;
 scalar_t__ LZMA_STATUS_MAYBE_FINISHED_WITHOUT_MARK ;
 int LzmaDec_AllocateProbs (TYPE_1__*,int const*,unsigned int,int ) ;
 int LzmaDec_Construct (TYPE_1__*) ;
 scalar_t__ LzmaDec_DecodeToDic (TYPE_1__*,scalar_t__,int const*,scalar_t__*,int ,scalar_t__*) ;
 int LzmaDec_FreeProbs (TYPE_1__*,int ) ;
 int LzmaDec_Init (TYPE_1__*) ;
 int RINOK (int ) ;
 scalar_t__ SZ_ERROR_DATA ;
 scalar_t__ SZ_OK ;

__attribute__((used)) static SRes SzDecodeLzma(const Byte *props, unsigned propsSize, UInt64 inSize, ILookInStream *inStream,
    Byte *outBuffer, SizeT outSize, ISzAllocPtr allocMain)
{
  CLzmaDec state;
  SRes res = SZ_OK;

  LzmaDec_Construct(&state);
  RINOK(LzmaDec_AllocateProbs(&state, props, propsSize, allocMain));
  state.dic = outBuffer;
  state.dicBufSize = outSize;
  LzmaDec_Init(&state);

  for (;;)
  {
    const void *inBuf = ((void*)0);
    size_t lookahead = (1 << 18);
    if (lookahead > inSize)
      lookahead = (size_t)inSize;
    res = ILookInStream_Look(inStream, &inBuf, &lookahead);
    if (res != SZ_OK)
      break;

    {
      SizeT inProcessed = (SizeT)lookahead, dicPos = state.dicPos;
      ELzmaStatus status;
      res = LzmaDec_DecodeToDic(&state, outSize, (const Byte *)inBuf, &inProcessed, LZMA_FINISH_END, &status);
      lookahead -= inProcessed;
      inSize -= inProcessed;
      if (res != SZ_OK)
        break;

      if (status == LZMA_STATUS_FINISHED_WITH_MARK)
      {
        if (outSize != state.dicPos || inSize != 0)
          res = SZ_ERROR_DATA;
        break;
      }

      if (outSize == state.dicPos && inSize == 0 && status == LZMA_STATUS_MAYBE_FINISHED_WITHOUT_MARK)
        break;

      if (inProcessed == 0 && dicPos == state.dicPos)
      {
        res = SZ_ERROR_DATA;
        break;
      }

      res = ILookInStream_Skip(inStream, inProcessed);
      if (res != SZ_OK)
        break;
    }
  }

  LzmaDec_FreeProbs(&state, allocMain);
  return res;
}
