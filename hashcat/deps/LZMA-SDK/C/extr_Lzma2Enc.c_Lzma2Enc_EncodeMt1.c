
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ UInt64 ;
struct TYPE_16__ {scalar_t__ blockSize; } ;
struct TYPE_15__ {int Read; } ;
struct TYPE_14__ {scalar_t__ limit; size_t processed; int finished; TYPE_4__ vt; int * realStream; } ;
struct TYPE_13__ {scalar_t__ expectedDataSize; scalar_t__* tempBufLzma; int allocBig; int alloc; TYPE_8__ props; } ;
struct TYPE_12__ {size_t srcPos; scalar_t__ enc; int propsAreSet; } ;
typedef int SRes ;
typedef scalar_t__ Int64 ;
typedef int ISeqOutStream ;
typedef int ISeqInStream ;
typedef int ICompressProgress ;
typedef TYPE_1__ CLzma2EncInt ;
typedef TYPE_2__ CLzma2Enc ;
typedef TYPE_3__ CLimitedSeqInStream ;
typedef scalar_t__ Byte ;


 int False ;
 int ISeqOutStream_Write (int *,scalar_t__*,int) ;
 scalar_t__ ISzAlloc_Alloc (int ,size_t) ;
 size_t LZMA2_CHUNK_SIZE_COMPRESSED_MAX ;
 scalar_t__ LZMA2_ENC_PROPS__BLOCK_SIZE__SOLID ;
 int LZMA2_KEEP_WINDOW_SIZE ;
 int LimitedSeqInStream_Init (TYPE_3__*) ;
 int LimitedSeqInStream_Read ;
 int Lzma2EncInt_EncodeSubblock (TYPE_1__*,scalar_t__*,size_t*,int *) ;
 int Lzma2EncInt_InitBlock (TYPE_1__*) ;
 int Lzma2EncInt_InitStream (TYPE_1__*,TYPE_8__*) ;
 scalar_t__ LzmaEnc_Create (int ) ;
 int LzmaEnc_Finish (scalar_t__) ;
 int LzmaEnc_MemPrepare (scalar_t__,scalar_t__ const*,size_t,int ,int ,int ) ;
 int LzmaEnc_PrepareForLzma2 (scalar_t__,TYPE_4__*,int ,int ,int ) ;
 int LzmaEnc_SetDataSize (scalar_t__,scalar_t__) ;
 int Progress (int *,scalar_t__,scalar_t__) ;
 int RINOK (int ) ;
 int SZ_ERROR_FAIL ;
 int SZ_ERROR_MEM ;
 int SZ_ERROR_OUTPUT_EOF ;
 int SZ_ERROR_WRITE ;
 int SZ_OK ;

__attribute__((used)) static SRes Lzma2Enc_EncodeMt1(
    CLzma2Enc *me,
    CLzma2EncInt *p,
    ISeqOutStream *outStream,
    Byte *outBuf, size_t *outBufSize,
    ISeqInStream *inStream,
    const Byte *inData, size_t inDataSize,
    int finished,
    ICompressProgress *progress)
{
  UInt64 unpackTotal = 0;
  UInt64 packTotal = 0;
  size_t outLim = 0;
  CLimitedSeqInStream limitedInStream;

  if (outBuf)
  {
    outLim = *outBufSize;
    *outBufSize = 0;
  }

  if (!p->enc)
  {
    p->propsAreSet = False;
    p->enc = LzmaEnc_Create(me->alloc);
    if (!p->enc)
      return SZ_ERROR_MEM;
  }

  limitedInStream.realStream = inStream;
  if (inStream)
  {
    limitedInStream.vt.Read = LimitedSeqInStream_Read;
  }

  if (!outBuf)
  {

    if (!me->tempBufLzma)
    {
      me->tempBufLzma = (Byte *)ISzAlloc_Alloc(me->alloc, LZMA2_CHUNK_SIZE_COMPRESSED_MAX);
      if (!me->tempBufLzma)
        return SZ_ERROR_MEM;
    }
  }

  RINOK(Lzma2EncInt_InitStream(p, &me->props));

  for (;;)
  {
    SRes res = SZ_OK;
    size_t inSizeCur = 0;

    Lzma2EncInt_InitBlock(p);

    LimitedSeqInStream_Init(&limitedInStream);
    limitedInStream.limit = me->props.blockSize;

    if (inStream)
    {
      UInt64 expected = (UInt64)(Int64)-1;

      if (me->expectedDataSize != (UInt64)(Int64)-1
          && me->expectedDataSize >= unpackTotal)
        expected = me->expectedDataSize - unpackTotal;
      if (me->props.blockSize != LZMA2_ENC_PROPS__BLOCK_SIZE__SOLID
          && expected > me->props.blockSize)
        expected = (size_t)me->props.blockSize;

      LzmaEnc_SetDataSize(p->enc, expected);

      RINOK(LzmaEnc_PrepareForLzma2(p->enc,
          &limitedInStream.vt,
          LZMA2_KEEP_WINDOW_SIZE,
          me->alloc,
          me->allocBig));
    }
    else
    {
      inSizeCur = inDataSize - (size_t)unpackTotal;
      if (me->props.blockSize != LZMA2_ENC_PROPS__BLOCK_SIZE__SOLID
          && inSizeCur > me->props.blockSize)
        inSizeCur = (size_t)me->props.blockSize;



      RINOK(LzmaEnc_MemPrepare(p->enc,
          inData + (size_t)unpackTotal, inSizeCur,
          LZMA2_KEEP_WINDOW_SIZE,
          me->alloc,
          me->allocBig));
    }

    for (;;)
    {
      size_t packSize = LZMA2_CHUNK_SIZE_COMPRESSED_MAX;
      if (outBuf)
        packSize = outLim - (size_t)packTotal;

      res = Lzma2EncInt_EncodeSubblock(p,
          outBuf ? outBuf + (size_t)packTotal : me->tempBufLzma, &packSize,
          outBuf ? ((void*)0) : outStream);

      if (res != SZ_OK)
        break;

      packTotal += packSize;
      if (outBuf)
        *outBufSize = (size_t)packTotal;

      res = Progress(progress, unpackTotal + p->srcPos, packTotal);
      if (res != SZ_OK)
        break;






      if (packSize == 0)
        break;
    }

    LzmaEnc_Finish(p->enc);

    unpackTotal += p->srcPos;

    RINOK(res);

    if (p->srcPos != (inStream ? limitedInStream.processed : inSizeCur))
      return SZ_ERROR_FAIL;

    if (inStream ? limitedInStream.finished : (unpackTotal == inDataSize))
    {
      if (finished)
      {
        if (outBuf)
        {
          size_t destPos = *outBufSize;
          if (destPos >= outLim)
            return SZ_ERROR_OUTPUT_EOF;
          outBuf[destPos] = 0;
          *outBufSize = destPos + 1;
        }
        else
        {
          Byte b = 0;
          if (ISeqOutStream_Write(outStream, &b, 1) != 1)
            return SZ_ERROR_WRITE;
        }
      }
      return SZ_OK;
    }
  }
}
