
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UInt32 ;
struct TYPE_6__ {int dicPos; } ;
struct TYPE_7__ {scalar_t__ state; int control; scalar_t__ unpackSize; scalar_t__ packSize; TYPE_1__ decoder; int isExtraMode; } ;
typedef scalar_t__ SizeT ;
typedef int ELzma2ParseStatus ;
typedef TYPE_2__ CLzma2Dec ;
typedef scalar_t__ Byte ;


 int LZMA2_CONTROL_COPY_RESET_DIC ;
 scalar_t__ LZMA2_IS_UNCOMPRESSED_STATE (TYPE_2__*) ;
 int LZMA2_PARSE_STATUS_NEW_BLOCK ;
 int LZMA2_PARSE_STATUS_NEW_CHUNK ;
 scalar_t__ LZMA2_STATE_CONTROL ;
 scalar_t__ LZMA2_STATE_DATA ;
 scalar_t__ LZMA2_STATE_DATA_CONT ;
 scalar_t__ LZMA2_STATE_ERROR ;
 scalar_t__ LZMA2_STATE_FINISHED ;
 scalar_t__ LZMA2_STATE_UNPACK0 ;
 int LZMA_STATUS_FINISHED_WITH_MARK ;
 int LZMA_STATUS_NEEDS_MORE_INPUT ;
 int LZMA_STATUS_NOT_FINISHED ;
 int LZMA_STATUS_NOT_SPECIFIED ;
 scalar_t__ Lzma2Dec_UpdateState (TYPE_2__*,int ) ;
 int True ;

ELzma2ParseStatus Lzma2Dec_Parse(CLzma2Dec *p,
    SizeT outSize,
    const Byte *src, SizeT *srcLen,
    int checkFinishBlock)
{
  SizeT inSize = *srcLen;
  *srcLen = 0;

  while (p->state != LZMA2_STATE_ERROR)
  {
    if (p->state == LZMA2_STATE_FINISHED)
      return (ELzma2ParseStatus)LZMA_STATUS_FINISHED_WITH_MARK;

    if (outSize == 0 && !checkFinishBlock)
      return (ELzma2ParseStatus)LZMA_STATUS_NOT_FINISHED;

    if (p->state != LZMA2_STATE_DATA && p->state != LZMA2_STATE_DATA_CONT)
    {
      if (*srcLen == inSize)
        return (ELzma2ParseStatus)LZMA_STATUS_NEEDS_MORE_INPUT;
      (*srcLen)++;

      p->state = Lzma2Dec_UpdateState(p, *src++);

      if (p->state == LZMA2_STATE_UNPACK0)
      {

        if (p->control == LZMA2_CONTROL_COPY_RESET_DIC || p->control >= 0xE0)
          return LZMA2_PARSE_STATUS_NEW_BLOCK;

      }





      if (outSize == 0 && p->state != LZMA2_STATE_FINISHED)
      {



        return (ELzma2ParseStatus)LZMA_STATUS_NOT_FINISHED;
      }

      if (p->state == LZMA2_STATE_DATA)
        return LZMA2_PARSE_STATUS_NEW_CHUNK;

      continue;
    }

    if (outSize == 0)
      return (ELzma2ParseStatus)LZMA_STATUS_NOT_FINISHED;

    {
      SizeT inCur = inSize - *srcLen;

      if (LZMA2_IS_UNCOMPRESSED_STATE(p))
      {
        if (inCur == 0)
          return (ELzma2ParseStatus)LZMA_STATUS_NEEDS_MORE_INPUT;
        if (inCur > p->unpackSize)
          inCur = p->unpackSize;
        if (inCur > outSize)
          inCur = outSize;
        p->decoder.dicPos += inCur;
        src += inCur;
        *srcLen += inCur;
        outSize -= inCur;
        p->unpackSize -= (UInt32)inCur;
        p->state = (p->unpackSize == 0) ? LZMA2_STATE_CONTROL : LZMA2_STATE_DATA_CONT;
      }
      else
      {
        p->isExtraMode = True;

        if (inCur == 0)
        {
          if (p->packSize != 0)
            return (ELzma2ParseStatus)LZMA_STATUS_NEEDS_MORE_INPUT;
        }
        else if (p->state == LZMA2_STATE_DATA)
        {
          p->state = LZMA2_STATE_DATA_CONT;
          if (*src != 0)
          {

            *srcLen += 1;
            p->packSize--;
            break;
          }
        }

        if (inCur > p->packSize)
          inCur = (SizeT)p->packSize;

        src += inCur;
        *srcLen += inCur;
        p->packSize -= (UInt32)inCur;

        if (p->packSize == 0)
        {
          SizeT rem = outSize;
          if (rem > p->unpackSize)
            rem = p->unpackSize;
          p->decoder.dicPos += rem;
          p->unpackSize -= (UInt32)rem;
          outSize -= rem;
          if (p->unpackSize == 0)
            p->state = LZMA2_STATE_CONTROL;
        }
      }
    }
  }

  p->state = LZMA2_STATE_ERROR;
  return (ELzma2ParseStatus)LZMA_STATUS_NOT_SPECIFIED;
}
