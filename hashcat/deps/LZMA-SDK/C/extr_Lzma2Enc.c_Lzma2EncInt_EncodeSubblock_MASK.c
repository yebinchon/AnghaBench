#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int UInt32 ;
struct TYPE_3__ {scalar_t__ srcPos; void* needInitState; void* needInitProp; scalar_t__ propsByte; int /*<<< orphan*/  enc; } ;
typedef  scalar_t__ SRes ;
typedef  int /*<<< orphan*/  ISeqOutStream ;
typedef  TYPE_1__ CLzma2EncInt ;
typedef  scalar_t__ Byte ;
typedef  int BoolInt ;

/* Variables and functions */
 void* False ; 
 size_t FUNC0 (int /*<<< orphan*/ *,scalar_t__*,size_t) ; 
 scalar_t__ LZMA2_CONTROL_COPY_NO_RESET ; 
 scalar_t__ LZMA2_CONTROL_COPY_RESET_DIC ; 
 unsigned int LZMA2_CONTROL_LZMA ; 
 int LZMA2_COPY_CHUNK_SIZE ; 
 int /*<<< orphan*/  LZMA2_PACK_SIZE_MAX ; 
 int LZMA2_UNPACK_SIZE_MAX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,void*,scalar_t__*,size_t*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ SZ_ERROR_OUTPUT_EOF ; 
 scalar_t__ SZ_ERROR_WRITE ; 
 scalar_t__ SZ_OK ; 
 int True ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static SRes FUNC8(CLzma2EncInt *p, Byte *outBuf,
    size_t *packSizeRes, ISeqOutStream *outStream)
{
  size_t packSizeLimit = *packSizeRes;
  size_t packSize = packSizeLimit;
  UInt32 unpackSize = LZMA2_UNPACK_SIZE_MAX;
  unsigned lzHeaderSize = 5 + (p->needInitProp ? 1 : 0);
  BoolInt useCopyBlock;
  SRes res;

  *packSizeRes = 0;
  if (packSize < lzHeaderSize)
    return SZ_ERROR_OUTPUT_EOF;
  packSize -= lzHeaderSize;
  
  FUNC4(p->enc);
  res = FUNC1(p->enc, p->needInitState,
      outBuf + lzHeaderSize, &packSize, LZMA2_PACK_SIZE_MAX, &unpackSize);
  
  FUNC5(FUNC7("\npackSize = %7d unpackSize = %7d  ", packSize, unpackSize));

  if (unpackSize == 0)
    return res;

  if (res == SZ_OK)
    useCopyBlock = (packSize + 2 >= unpackSize || packSize > (1 << 16));
  else
  {
    if (res != SZ_ERROR_OUTPUT_EOF)
      return res;
    res = SZ_OK;
    useCopyBlock = True;
  }

  if (useCopyBlock)
  {
    size_t destPos = 0;
    FUNC5(FUNC7("################# COPY           "));

    while (unpackSize > 0)
    {
      UInt32 u = (unpackSize < LZMA2_COPY_CHUNK_SIZE) ? unpackSize : LZMA2_COPY_CHUNK_SIZE;
      if (packSizeLimit - destPos < u + 3)
        return SZ_ERROR_OUTPUT_EOF;
      outBuf[destPos++] = (Byte)(p->srcPos == 0 ? LZMA2_CONTROL_COPY_RESET_DIC : LZMA2_CONTROL_COPY_NO_RESET);
      outBuf[destPos++] = (Byte)((u - 1) >> 8);
      outBuf[destPos++] = (Byte)(u - 1);
      FUNC6(outBuf + destPos, FUNC2(p->enc) - unpackSize, u);
      unpackSize -= u;
      destPos += u;
      p->srcPos += u;
      
      if (outStream)
      {
        *packSizeRes += destPos;
        if (FUNC0(outStream, outBuf, destPos) != destPos)
          return SZ_ERROR_WRITE;
        destPos = 0;
      }
      else
        *packSizeRes = destPos;
      /* needInitState = True; */
    }
    
    FUNC3(p->enc);
    return SZ_OK;
  }

  {
    size_t destPos = 0;
    UInt32 u = unpackSize - 1;
    UInt32 pm = (UInt32)(packSize - 1);
    unsigned mode = (p->srcPos == 0) ? 3 : (p->needInitState ? (p->needInitProp ? 2 : 1) : 0);

    FUNC5(FUNC7("               "));

    outBuf[destPos++] = (Byte)(LZMA2_CONTROL_LZMA | (mode << 5) | ((u >> 16) & 0x1F));
    outBuf[destPos++] = (Byte)(u >> 8);
    outBuf[destPos++] = (Byte)u;
    outBuf[destPos++] = (Byte)(pm >> 8);
    outBuf[destPos++] = (Byte)pm;
    
    if (p->needInitProp)
      outBuf[destPos++] = p->propsByte;
    
    p->needInitProp = False;
    p->needInitState = False;
    destPos += packSize;
    p->srcPos += unpackSize;

    if (outStream)
      if (FUNC0(outStream, outBuf, destPos) != destPos)
        return SZ_ERROR_WRITE;
    
    *packSizeRes = destPos;
    return SZ_OK;
  }
}