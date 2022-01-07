
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef size_t UInt64 ;
typedef size_t UInt32 ;
struct TYPE_20__ {int unpackSize; size_t packSize; } ;
struct TYPE_22__ {size_t blockHeaderSize; scalar_t__ numBlocks; int numTotalBlocks; int numStartedStreams; int streamFlags; TYPE_6__ block; void* headerParsedOk; void* parseMode; } ;
struct TYPE_21__ {size_t srcSize; size_t outPos; scalar_t__* src; void* state; scalar_t__ srcFinished; void* canCreateNewThread; scalar_t__ startCall; } ;
struct TYPE_16__ {int memUseMax; } ;
struct TYPE_15__ {int numStartedThreads; } ;
struct TYPE_17__ {int vt; } ;
struct TYPE_19__ {size_t unpackBlockMaxSize; size_t outSize; size_t outProcessed_Parse; scalar_t__ numBlocks; int numTotalBlocks; int numStreams; scalar_t__ outSize_Defined; TYPE_2__ props; TYPE_1__ mtc; int streamFlags; void* isBlockHeaderState_Parse; TYPE_3__ alignOffsetAlloc; TYPE_4__* coders; } ;
struct TYPE_18__ {size_t outPreSize; size_t inPreSize; size_t inPreHeaderSize; size_t blockPackSize_for_Index; size_t blockPackTotal; TYPE_8__ dec; void* parseState; void* parsing_Truncated; void* skipMode; int streamFlags; int status; scalar_t__ codeRes; void* atBlockHeader; void* dec_created; scalar_t__ numBlocks; int numTotalBlocks; int numStreams; scalar_t__ outCodeSize; scalar_t__ inCodeSize; } ;
typedef scalar_t__ SRes ;
typedef int ECoderStatus ;
typedef TYPE_4__ CXzDecMtThread ;
typedef TYPE_5__ CXzDecMt ;
typedef TYPE_6__ CXzBlock ;
typedef TYPE_7__ CMtDecCallbackInfo ;


 int CODER_FINISH_END ;
 int CODER_STATUS_NOT_SPECIFIED ;
 void* False ;
 void* MTDEC_PARSE_CONTINUE ;
 void* MTDEC_PARSE_END ;
 void* MTDEC_PARSE_NEW ;
 void* MTDEC_PARSE_OVERFLOW ;
 int PRF_STR_INT (char*,size_t) ;
 scalar_t__ SZ_OK ;
 void* True ;
 scalar_t__ XzBlock_HasPackSize (TYPE_6__ const*) ;
 scalar_t__ XzBlock_HasUnpackSize (TYPE_6__ const*) ;
 size_t XzFlags_GetCheckSize (int ) ;
 scalar_t__ XzUnpacker_Code (TYPE_8__*,int *,size_t*,scalar_t__*,size_t*,scalar_t__,int ,int *) ;
 int XzUnpacker_Construct (TYPE_8__*,int *) ;
 int XzUnpacker_Init (TYPE_8__*) ;
 int XzUnpacker_PrepareToRandomBlockDecoding (TYPE_8__*) ;

__attribute__((used)) static void XzDecMt_Callback_Parse(void *obj, unsigned coderIndex, CMtDecCallbackInfo *cc)
{
  CXzDecMt *me = (CXzDecMt *)obj;
  CXzDecMtThread *coder = &me->coders[coderIndex];
  size_t srcSize = cc->srcSize;

  cc->srcSize = 0;
  cc->outPos = 0;
  cc->state = MTDEC_PARSE_CONTINUE;

  cc->canCreateNewThread = True;

  if (cc->startCall)
  {
    coder->outPreSize = 0;
    coder->inPreSize = 0;
    coder->inPreHeaderSize = 0;
    coder->parseState = MTDEC_PARSE_CONTINUE;
    coder->parsing_Truncated = False;
    coder->skipMode = False;
    coder->codeRes = SZ_OK;
    coder->status = CODER_STATUS_NOT_SPECIFIED;
    coder->inCodeSize = 0;
    coder->outCodeSize = 0;

    coder->numStreams = me->numStreams;
    coder->numTotalBlocks = me->numTotalBlocks;
    coder->numBlocks = me->numBlocks;

    if (!coder->dec_created)
    {
      XzUnpacker_Construct(&coder->dec, &me->alignOffsetAlloc.vt);
      coder->dec_created = True;
    }

    XzUnpacker_Init(&coder->dec);

    if (me->isBlockHeaderState_Parse)
    {
      coder->dec.streamFlags = me->streamFlags;
      coder->atBlockHeader = True;
      XzUnpacker_PrepareToRandomBlockDecoding(&coder->dec);
    }
    else
    {
      coder->atBlockHeader = False;
      me->isBlockHeaderState_Parse = True;
    }

    coder->dec.numStartedStreams = me->numStreams;
    coder->dec.numTotalBlocks = me->numTotalBlocks;
    coder->dec.numBlocks = me->numBlocks;
  }

  while (!coder->skipMode)
  {
    ECoderStatus status;
    SRes res;
    size_t srcSize2 = srcSize;
    size_t destSize = (size_t)0 - 1;

    coder->dec.parseMode = True;
    coder->dec.headerParsedOk = False;

    PRF_STR_INT("Parse", srcSize2);

    res = XzUnpacker_Code(&coder->dec,
        ((void*)0), &destSize,
        cc->src, &srcSize2, cc->srcFinished,
        CODER_FINISH_END, &status);



    coder->codeRes = res;
    coder->status = status;
    cc->srcSize += srcSize2;
    srcSize -= srcSize2;
    coder->inPreHeaderSize += srcSize2;
    coder->inPreSize = coder->inPreHeaderSize;

    if (res != SZ_OK)
    {
      cc->state =
      coder->parseState = MTDEC_PARSE_END;





      return;
    }

    if (coder->dec.headerParsedOk)
    {
      const CXzBlock *block = &coder->dec.block;
      if (XzBlock_HasUnpackSize(block)

          && XzBlock_HasPackSize(block))
      {
        {
          if (block->unpackSize * 2 * me->mtc.numStartedThreads > me->props.memUseMax)
          {
            cc->state = MTDEC_PARSE_OVERFLOW;
            return;
          }
        }
        {
        UInt64 packSize = block->packSize;
        UInt64 packSizeAligned = packSize + ((0 - (unsigned)packSize) & 3);
        UInt32 checkSize = XzFlags_GetCheckSize(coder->dec.streamFlags);
        UInt64 blockPackSum = coder->inPreSize + packSizeAligned + checkSize;


        {
          coder->blockPackSize_for_Index = (size_t)(coder->dec.blockHeaderSize + packSize + checkSize);
          coder->blockPackTotal = (size_t)blockPackSum;
          coder->outPreSize = (size_t)block->unpackSize;
          coder->streamFlags = coder->dec.streamFlags;
          me->streamFlags = coder->dec.streamFlags;
          coder->skipMode = True;
          break;
        }
        }
      }
    }
    else

    {
      if (!cc->srcFinished)
        return;
      cc->state =
      coder->parseState = MTDEC_PARSE_END;
      return;
    }
    cc->state = MTDEC_PARSE_OVERFLOW;
    return;
  }


  {
    UInt64 rem = coder->blockPackTotal - coder->inPreSize;
    size_t cur = srcSize;
    if (cur > rem)
      cur = (size_t)rem;
    cc->srcSize += cur;
    coder->inPreSize += cur;
    srcSize -= cur;

    if (coder->inPreSize == coder->blockPackTotal)
    {
      if (srcSize == 0)
      {
        if (!cc->srcFinished)
          return;
        cc->state = MTDEC_PARSE_END;
      }
      else if ((cc->src)[cc->srcSize] == 0)
        cc->state = MTDEC_PARSE_END;
      else
      {
        cc->state = MTDEC_PARSE_NEW;

        {
          size_t blockMax = me->unpackBlockMaxSize;
          if (blockMax < coder->outPreSize)
            blockMax = coder->outPreSize;
          {
            UInt64 required = (UInt64)blockMax * (me->mtc.numStartedThreads + 1) * 2;
            if (me->props.memUseMax < required)
              cc->canCreateNewThread = False;
          }
        }

        if (me->outSize_Defined)
        {

          const UInt64 rem2 = me->outSize - me->outProcessed_Parse;
          if (rem2 < coder->outPreSize)
          {
            coder->parsing_Truncated = True;
            cc->state = MTDEC_PARSE_END;
          }
          me->outProcessed_Parse += coder->outPreSize;
        }
      }
    }
    else if (cc->srcFinished)
      cc->state = MTDEC_PARSE_END;
    else
      return;

    coder->parseState = cc->state;
    cc->outPos = coder->outPreSize;

    me->numStreams = coder->dec.numStartedStreams;
    me->numTotalBlocks = coder->dec.numTotalBlocks;
    me->numBlocks = coder->dec.numBlocks + 1;
    return;
  }
}
