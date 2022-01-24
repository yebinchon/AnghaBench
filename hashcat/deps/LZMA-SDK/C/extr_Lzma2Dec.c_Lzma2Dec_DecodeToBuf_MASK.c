#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ dicPos; scalar_t__ dicBufSize; scalar_t__ dic; } ;
struct TYPE_6__ {TYPE_1__ decoder; } ;
typedef  scalar_t__ SizeT ;
typedef  scalar_t__ SRes ;
typedef  int /*<<< orphan*/  ELzmaStatus ;
typedef  int /*<<< orphan*/  ELzmaFinishMode ;
typedef  TYPE_2__ CLzma2Dec ;
typedef  int /*<<< orphan*/  Byte ;

/* Variables and functions */
 int /*<<< orphan*/  LZMA_FINISH_ANY ; 
 scalar_t__ FUNC0 (TYPE_2__*,scalar_t__,int /*<<< orphan*/  const*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ SZ_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 

SRes FUNC2(CLzma2Dec *p, Byte *dest, SizeT *destLen, const Byte *src, SizeT *srcLen, ELzmaFinishMode finishMode, ELzmaStatus *status)
{
  SizeT outSize = *destLen, inSize = *srcLen;
  *srcLen = *destLen = 0;
  
  for (;;)
  {
    SizeT inCur = inSize, outCur, dicPos;
    ELzmaFinishMode curFinishMode;
    SRes res;
    
    if (p->decoder.dicPos == p->decoder.dicBufSize)
      p->decoder.dicPos = 0;
    dicPos = p->decoder.dicPos;
    curFinishMode = LZMA_FINISH_ANY;
    outCur = p->decoder.dicBufSize - dicPos;
    
    if (outCur >= outSize)
    {
      outCur = outSize;
      curFinishMode = finishMode;
    }

    res = FUNC0(p, dicPos + outCur, src, &inCur, curFinishMode, status);
    
    src += inCur;
    inSize -= inCur;
    *srcLen += inCur;
    outCur = p->decoder.dicPos - dicPos;
    FUNC1(dest, p->decoder.dic + dicPos, outCur);
    dest += outCur;
    outSize -= outCur;
    *destLen += outCur;
    if (res != 0)
      return res;
    if (outCur == 0 || outSize == 0)
      return SZ_OK;
  }
}