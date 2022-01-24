#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UInt64 ;
struct TYPE_16__ {scalar_t__ blockSize; } ;
struct TYPE_15__ {int /*<<< orphan*/  Read; } ;
struct TYPE_14__ {scalar_t__ limit; size_t processed; int finished; TYPE_4__ vt; int /*<<< orphan*/ * realStream; } ;
struct TYPE_13__ {scalar_t__ expectedDataSize; scalar_t__* tempBufLzma; int /*<<< orphan*/  allocBig; int /*<<< orphan*/  alloc; TYPE_8__ props; } ;
struct TYPE_12__ {size_t srcPos; scalar_t__ enc; int /*<<< orphan*/  propsAreSet; } ;
typedef  int /*<<< orphan*/  SRes ;
typedef  scalar_t__ Int64 ;
typedef  int /*<<< orphan*/  ISeqOutStream ;
typedef  int /*<<< orphan*/  ISeqInStream ;
typedef  int /*<<< orphan*/  ICompressProgress ;
typedef  TYPE_1__ CLzma2EncInt ;
typedef  TYPE_2__ CLzma2Enc ;
typedef  TYPE_3__ CLimitedSeqInStream ;
typedef  scalar_t__ Byte ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 size_t LZMA2_CHUNK_SIZE_COMPRESSED_MAX ; 
 scalar_t__ LZMA2_ENC_PROPS__BLOCK_SIZE__SOLID ; 
 int /*<<< orphan*/  LZMA2_KEEP_WINDOW_SIZE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  LimitedSeqInStream_Read ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__*,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_8__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__ const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SZ_ERROR_FAIL ; 
 int /*<<< orphan*/  SZ_ERROR_MEM ; 
 int /*<<< orphan*/  SZ_ERROR_OUTPUT_EOF ; 
 int /*<<< orphan*/  SZ_ERROR_WRITE ; 
 int /*<<< orphan*/  SZ_OK ; 

__attribute__((used)) static SRes FUNC13(
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
    p->enc = FUNC6(me->alloc);
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
    // outStream version works only in one thread. So we use CLzma2Enc::tempBufLzma
    if (!me->tempBufLzma)
    {
      me->tempBufLzma = (Byte *)FUNC1(me->alloc, LZMA2_CHUNK_SIZE_COMPRESSED_MAX);
      if (!me->tempBufLzma)
        return SZ_ERROR_MEM;
    }
  }

  FUNC12(FUNC5(p, &me->props));

  for (;;)
  {
    SRes res = SZ_OK;
    size_t inSizeCur = 0;

    FUNC4(p);
    
    FUNC2(&limitedInStream);
    limitedInStream.limit = me->props.blockSize;

    if (inStream)
    {
      UInt64 expected = (UInt64)(Int64)-1;
      // inStream version works only in one thread. So we use CLzma2Enc::expectedDataSize
      if (me->expectedDataSize != (UInt64)(Int64)-1
          && me->expectedDataSize >= unpackTotal)
        expected = me->expectedDataSize - unpackTotal;
      if (me->props.blockSize != LZMA2_ENC_PROPS__BLOCK_SIZE__SOLID
          && expected > me->props.blockSize)
        expected = (size_t)me->props.blockSize;

      FUNC10(p->enc, expected);

      FUNC12(FUNC9(p->enc,
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
    
      // LzmaEnc_SetDataSize(p->enc, inSizeCur);
      
      FUNC12(FUNC8(p->enc,
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
      
      res = FUNC3(p,
          outBuf ? outBuf + (size_t)packTotal : me->tempBufLzma, &packSize,
          outBuf ? NULL : outStream);
      
      if (res != SZ_OK)
        break;

      packTotal += packSize;
      if (outBuf)
        *outBufSize = (size_t)packTotal;
      
      res = FUNC11(progress, unpackTotal + p->srcPos, packTotal);
      if (res != SZ_OK)
        break;

      /*
      if (LzmaEnc_GetNumAvailableBytes(p->enc) == 0)
        break;
      */

      if (packSize == 0)
        break;
    }
    
    FUNC7(p->enc);
    
    unpackTotal += p->srcPos;
    
    FUNC12(res);

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
          if (FUNC0(outStream, &b, 1) != 1)
            return SZ_ERROR_WRITE;
        }
      }
      return SZ_OK;
    }
  }
}