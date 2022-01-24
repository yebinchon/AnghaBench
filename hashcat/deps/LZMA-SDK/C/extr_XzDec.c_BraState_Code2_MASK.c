#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ bufPos; scalar_t__ bufConv; int bufTotal; int /*<<< orphan*/  const* buf; } ;
typedef  scalar_t__ SizeT ;
typedef  int /*<<< orphan*/  SRes ;
typedef  int /*<<< orphan*/  ECoderStatus ;
typedef  int /*<<< orphan*/  ECoderFinishMode ;
typedef  TYPE_1__ CBraState ;
typedef  int /*<<< orphan*/  const Byte ;

/* Variables and functions */
 size_t BRA_BUF_SIZE ; 
 size_t FUNC0 (void*,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  CODER_STATUS_FINISHED_WITH_MARK ; 
 int /*<<< orphan*/  CODER_STATUS_NOT_FINISHED ; 
 int /*<<< orphan*/  SZ_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static SRes FUNC4(void *pp,
    Byte *dest, SizeT *destLen,
    const Byte *src, SizeT *srcLen, int srcWasFinished,
    ECoderFinishMode finishMode,
    // int *wasFinished
    ECoderStatus *status)
{
  CBraState *p = ((CBraState *)pp);
  SizeT destRem = *destLen;
  SizeT srcRem = *srcLen;
  FUNC1(finishMode);

  *destLen = 0;
  *srcLen = 0;
  // *wasFinished = False;
  *status = CODER_STATUS_NOT_FINISHED;
  
  while (destRem > 0)
  {
    if (p->bufPos != p->bufConv)
    {
      size_t size = p->bufConv - p->bufPos;
      if (size > destRem)
        size = destRem;
      FUNC2(dest, p->buf + p->bufPos, size);
      p->bufPos += size;
      *destLen += size;
      dest += size;
      destRem -= size;
      continue;
    }
    
    p->bufTotal -= p->bufPos;
    FUNC3(p->buf, p->buf + p->bufPos, p->bufTotal);
    p->bufPos = 0;
    p->bufConv = 0;
    {
      size_t size = BRA_BUF_SIZE - p->bufTotal;
      if (size > srcRem)
        size = srcRem;
      FUNC2(p->buf + p->bufTotal, src, size);
      *srcLen += size;
      src += size;
      srcRem -= size;
      p->bufTotal += size;
    }
    if (p->bufTotal == 0)
      break;
    
    p->bufConv = FUNC0(pp, p->buf, p->bufTotal);

    if (p->bufConv == 0)
    {
      if (!srcWasFinished)
        break;
      p->bufConv = p->bufTotal;
    }
  }

  if (p->bufTotal == p->bufPos && srcRem == 0 && srcWasFinished)
  {
    *status = CODER_STATUS_FINISHED_WITH_MARK;
    // *wasFinished = 1;
  }

  return SZ_OK;
}