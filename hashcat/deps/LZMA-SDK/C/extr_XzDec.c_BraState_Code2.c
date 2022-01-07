
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bufPos; scalar_t__ bufConv; int bufTotal; int const* buf; } ;
typedef scalar_t__ SizeT ;
typedef int SRes ;
typedef int ECoderStatus ;
typedef int ECoderFinishMode ;
typedef TYPE_1__ CBraState ;
typedef int const Byte ;


 size_t BRA_BUF_SIZE ;
 size_t BraState_Filter (void*,int const*,scalar_t__) ;
 int CODER_STATUS_FINISHED_WITH_MARK ;
 int CODER_STATUS_NOT_FINISHED ;
 int SZ_OK ;
 int UNUSED_VAR (int ) ;
 int memcpy (int const*,int const*,size_t) ;
 int memmove (int const*,int const*,int) ;

__attribute__((used)) static SRes BraState_Code2(void *pp,
    Byte *dest, SizeT *destLen,
    const Byte *src, SizeT *srcLen, int srcWasFinished,
    ECoderFinishMode finishMode,

    ECoderStatus *status)
{
  CBraState *p = ((CBraState *)pp);
  SizeT destRem = *destLen;
  SizeT srcRem = *srcLen;
  UNUSED_VAR(finishMode);

  *destLen = 0;
  *srcLen = 0;

  *status = CODER_STATUS_NOT_FINISHED;

  while (destRem > 0)
  {
    if (p->bufPos != p->bufConv)
    {
      size_t size = p->bufConv - p->bufPos;
      if (size > destRem)
        size = destRem;
      memcpy(dest, p->buf + p->bufPos, size);
      p->bufPos += size;
      *destLen += size;
      dest += size;
      destRem -= size;
      continue;
    }

    p->bufTotal -= p->bufPos;
    memmove(p->buf, p->buf + p->bufPos, p->bufTotal);
    p->bufPos = 0;
    p->bufConv = 0;
    {
      size_t size = BRA_BUF_SIZE - p->bufTotal;
      if (size > srcRem)
        size = srcRem;
      memcpy(p->buf + p->bufTotal, src, size);
      *srcLen += size;
      src += size;
      srcRem -= size;
      p->bufTotal += size;
    }
    if (p->bufTotal == 0)
      break;

    p->bufConv = BraState_Filter(pp, p->buf, p->bufTotal);

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

  }

  return SZ_OK;
}
