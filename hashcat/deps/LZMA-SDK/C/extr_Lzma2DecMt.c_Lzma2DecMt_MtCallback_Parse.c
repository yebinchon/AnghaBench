
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


typedef size_t UInt64 ;
typedef int UInt32 ;
struct TYPE_16__ {size_t dicPos; } ;
struct TYPE_20__ {scalar_t__ unpackSize; TYPE_3__ decoder; } ;
struct TYPE_15__ {size_t outBlockMax; } ;
struct TYPE_14__ {int baseAlloc; } ;
struct TYPE_19__ {size_t outSize; size_t outProcessed_Parse; TYPE_2__ props; int finishMode; scalar_t__ outSize_Defined; TYPE_1__ alignOffsetAlloc; TYPE_5__* coders; } ;
struct TYPE_13__ {unsigned int numAlignBits; int offset; int baseAlloc; } ;
struct TYPE_18__ {int inPreSize; size_t outPreSize; int parseStatus; void* state; TYPE_7__ dec; int codeRes; scalar_t__ outCodeSize; scalar_t__ inCodeSize; TYPE_12__ alloc; void* dec_created; } ;
struct TYPE_17__ {int srcSize; int const src; size_t outPos; void* state; scalar_t__ startCall; } ;
typedef int SizeT ;
typedef int ELzma2ParseStatus ;
typedef TYPE_4__ CMtDecCallbackInfo ;
typedef TYPE_5__ CLzma2DecMtThread ;
typedef TYPE_6__ CLzma2DecMt ;
typedef int BoolInt ;


 int AlignOffsetAlloc_CreateVTable (TYPE_12__*) ;
 int False ;
 int LZMA2_PARSE_STATUS_NEW_BLOCK ;
 int LZMA2_PARSE_STATUS_NEW_CHUNK ;
 int LZMA_STATUS_FINISHED_WITH_MARK ;
 int LZMA_STATUS_NEEDS_MORE_INPUT ;
 int LZMA_STATUS_NOT_FINISHED ;
 int LZMA_STATUS_NOT_SPECIFIED ;
 int Lzma2Dec_Construct (TYPE_7__*) ;
 int Lzma2Dec_GetUnpackExtra (TYPE_7__*) ;
 int Lzma2Dec_Init (TYPE_7__*) ;
 int Lzma2Dec_Parse (TYPE_7__*,size_t,int const,int*,int) ;
 void* MTDEC_PARSE_CONTINUE ;
 void* MTDEC_PARSE_END ;
 void* MTDEC_PARSE_NEW ;
 void* MTDEC_PARSE_OVERFLOW ;
 int PRF_STR_INT_2 (char*,unsigned int,int) ;
 int SZ_OK ;
 void* True ;

__attribute__((used)) static void Lzma2DecMt_MtCallback_Parse(void *obj, unsigned coderIndex, CMtDecCallbackInfo *cc)
{
  CLzma2DecMt *me = (CLzma2DecMt *)obj;
  CLzma2DecMtThread *t = &me->coders[coderIndex];

  PRF_STR_INT_2("Parse", coderIndex, cc->srcSize);

  cc->state = MTDEC_PARSE_CONTINUE;

  if (cc->startCall)
  {
    if (!t->dec_created)
    {
      Lzma2Dec_Construct(&t->dec);
      t->dec_created = True;
      AlignOffsetAlloc_CreateVTable(&t->alloc);
      {


        const unsigned kNumAlignBits = 12;
        const unsigned kNumCacheLineBits = 7;
        t->alloc.numAlignBits = kNumAlignBits;
        t->alloc.offset = ((UInt32)coderIndex * ((1 << 11) + (1 << 8) + (1 << 6))) & ((1 << kNumAlignBits) - (1 << kNumCacheLineBits));
        t->alloc.baseAlloc = me->alignOffsetAlloc.baseAlloc;
      }
    }
    Lzma2Dec_Init(&t->dec);

    t->inPreSize = 0;
    t->outPreSize = 0;


    t->parseStatus = (ELzma2ParseStatus)LZMA_STATUS_NOT_SPECIFIED;
    t->state = MTDEC_PARSE_CONTINUE;

    t->inCodeSize = 0;
    t->outCodeSize = 0;
    t->codeRes = SZ_OK;


  }

  {
    ELzma2ParseStatus status;
    BoolInt overflow;
    UInt32 unpackRem = 0;

    int checkFinishBlock = True;
    size_t limit = me->props.outBlockMax;
    if (me->outSize_Defined)
    {
      UInt64 rem = me->outSize - me->outProcessed_Parse;
      if (limit >= rem)
      {
        limit = (size_t)rem;
        if (!me->finishMode)
          checkFinishBlock = False;
      }
    }




    {
      const SizeT srcOrig = cc->srcSize;
      SizeT srcSize_Point = 0;
      SizeT dicPos_Point = 0;

      cc->srcSize = 0;
      overflow = False;

      for (;;)
      {
        SizeT srcCur = srcOrig - cc->srcSize;

        status = Lzma2Dec_Parse(&t->dec,
            limit - t->dec.decoder.dicPos,
            cc->src + cc->srcSize, &srcCur,
            checkFinishBlock);

        cc->srcSize += srcCur;

        if (status == LZMA2_PARSE_STATUS_NEW_CHUNK)
        {
          if (t->dec.unpackSize > me->props.outBlockMax - t->dec.decoder.dicPos)
          {
            overflow = True;
            break;
          }
          continue;
        }

        if (status == LZMA2_PARSE_STATUS_NEW_BLOCK)
        {
          if (t->dec.decoder.dicPos == 0)
            continue;

          if (t->dec.decoder.dicPos >= (1 << 14))
            break;
          dicPos_Point = t->dec.decoder.dicPos;
          srcSize_Point = cc->srcSize;
          continue;
        }

        if ((int)status == LZMA_STATUS_NOT_FINISHED && checkFinishBlock


            )
        {
          overflow = True;
          break;
        }

        unpackRem = Lzma2Dec_GetUnpackExtra(&t->dec);
        break;
      }

      if (dicPos_Point != 0
          && (int)status != LZMA2_PARSE_STATUS_NEW_BLOCK
          && (int)status != LZMA_STATUS_FINISHED_WITH_MARK
          && (int)status != LZMA_STATUS_NOT_SPECIFIED)
      {

        status = LZMA2_PARSE_STATUS_NEW_BLOCK;
        unpackRem = 0;
        t->dec.decoder.dicPos = dicPos_Point;
        cc->srcSize = srcSize_Point;
        overflow = False;
      }
    }

    t->inPreSize += cc->srcSize;
    t->parseStatus = status;

    if (overflow)
      cc->state = MTDEC_PARSE_OVERFLOW;
    else
    {
      size_t dicPos = t->dec.decoder.dicPos;

      if ((int)status != LZMA_STATUS_NEEDS_MORE_INPUT)
      {
        if (status == LZMA2_PARSE_STATUS_NEW_BLOCK)
        {
          cc->state = MTDEC_PARSE_NEW;
          cc->srcSize--;
          t->inPreSize--;
        }
        else
        {
          cc->state = MTDEC_PARSE_END;
          if ((int)status != LZMA_STATUS_FINISHED_WITH_MARK)
          {


            if (unpackRem != 0)
            {

              SizeT rem = limit - dicPos;
              if (rem > unpackRem)
                rem = unpackRem;
              dicPos += rem;
            }
          }
        }

        me->outProcessed_Parse += dicPos;
      }

      cc->outPos = dicPos;
      t->outPreSize = (size_t)dicPos;
    }

    t->state = cc->state;
    return;
  }
}
