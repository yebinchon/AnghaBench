
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_15__ ;


typedef scalar_t__ UInt64 ;
struct TYPE_19__ {scalar_t__ res; } ;
struct TYPE_17__ {int numThreadsMax; scalar_t__ inProcessed; scalar_t__ readRes; scalar_t__ readProcessed; void* needContinue; TYPE_2__ mtProgress; void* readWasFinished; int inBufSize; int * alloc; int * inStream; int * progress; TYPE_7__* mtCallbackObject; TYPE_3__* mtCallback; } ;
struct TYPE_23__ {int numThreads; int inBufSize_MT; } ;
struct TYPE_18__ {int vt; } ;
struct TYPE_24__ {int finishMode; scalar_t__ writeRes; scalar_t__ inProcessed; scalar_t__ readProcessed; scalar_t__ codeRes; scalar_t__ mainErrorCode; int finishedDecoderIndex; scalar_t__ readRes; int status; int dec; TYPE_15__ mtc; void* parsing_Truncated; void* mainDecoderWasCalled; TYPE_5__* coders; scalar_t__ outProcessed; void* readWasFinished; TYPE_6__ props; TYPE_1__ alignOffsetAlloc; void* mtc_WasConstructed; scalar_t__ numBlocks; scalar_t__ numTotalBlocks; scalar_t__ numStreams; scalar_t__ outProcessed_Parse; void* isBlockHeaderState_Write; void* isBlockHeaderState_Parse; scalar_t__ outSize; void* outSize_Defined; int * progress; int * outStream; int * inStream; } ;
struct TYPE_22__ {scalar_t__ codeRes; int status; int dec; } ;
struct TYPE_21__ {scalar_t__ InSize; scalar_t__ CombinedRes_Type; scalar_t__ CombinedRes; scalar_t__ ReadRes; scalar_t__ OutSize; scalar_t__ ProgressRes; } ;
struct TYPE_20__ {int Write; int Code; int PreCode; int Parse; } ;
typedef scalar_t__ SRes ;
typedef int ISeqOutStream ;
typedef int ISeqInStream ;
typedef TYPE_3__ IMtDecCallback ;
typedef int ICompressProgress ;
typedef int ECoderStatus ;
typedef int CXzUnpacker ;
typedef TYPE_4__ CXzStatInfo ;
typedef TYPE_5__ CXzDecMtThread ;
typedef TYPE_6__ CXzDecMtProps ;
typedef scalar_t__ CXzDecMtHandle ;
typedef TYPE_7__ CXzDecMt ;
typedef void* BoolInt ;


 int CODER_STATUS_NOT_SPECIFIED ;
 scalar_t__ E_FAIL ;
 void* False ;
 scalar_t__ MtDec_Code (TYPE_15__*) ;
 int MtDec_Construct (TYPE_15__*) ;
 int PRF_STR (char*) ;
 scalar_t__ SZ_ERROR_PROGRESS ;
 void* SZ_ERROR_READ ;
 scalar_t__ SZ_ERROR_WRITE ;
 scalar_t__ SZ_OK ;
 void* True ;
 int XzDecMt_Callback_Code ;
 int XzDecMt_Callback_Parse ;
 int XzDecMt_Callback_PreCode ;
 int XzDecMt_Callback_Write ;
 scalar_t__ XzDecMt_Decode_ST (TYPE_7__*,void*,TYPE_4__*) ;
 int XzDecMt_FreeSt (TYPE_7__*) ;
 int XzStatInfo_Clear (TYPE_4__*) ;
 int XzStatInfo_SetStat (int *,int,scalar_t__,scalar_t__,scalar_t__,int ,void*,TYPE_4__*) ;
 int XzUnpacker_Init (int *) ;

SRes XzDecMt_Decode(CXzDecMtHandle pp,
    const CXzDecMtProps *props,
    const UInt64 *outDataSize, int finishMode,
    ISeqOutStream *outStream,

    ISeqInStream *inStream,

    CXzStatInfo *stat,
    int *isMT,
    ICompressProgress *progress)
{
  CXzDecMt *p = (CXzDecMt *)pp;

  BoolInt tMode;


  XzStatInfo_Clear(stat);

  p->props = *props;

  p->inStream = inStream;
  p->outStream = outStream;
  p->progress = progress;


  p->outSize = 0;
  p->outSize_Defined = False;
  if (outDataSize)
  {
    p->outSize_Defined = True;
    p->outSize = *outDataSize;
  }

  p->finishMode = finishMode;



  p->writeRes = SZ_OK;
  p->outProcessed = 0;
  p->inProcessed = 0;
  p->readProcessed = 0;
  p->readWasFinished = False;

  p->codeRes = 0;
  p->status = CODER_STATUS_NOT_SPECIFIED;

  XzUnpacker_Init(&p->dec);

  *isMT = False;
  p->isBlockHeaderState_Parse = False;
  p->isBlockHeaderState_Write = False;

  p->mainErrorCode = SZ_OK;
  p->mainDecoderWasCalled = False;

  tMode = False;

  if (p->props.numThreads > 1)
  {
    IMtDecCallback vt;



    XzDecMt_FreeSt(p);

    p->outProcessed_Parse = 0;
    p->parsing_Truncated = False;

    p->numStreams = 0;
    p->numTotalBlocks = 0;
    p->numBlocks = 0;
    p->finishedDecoderIndex = -1;

    if (!p->mtc_WasConstructed)
    {
      p->mtc_WasConstructed = True;
      MtDec_Construct(&p->mtc);
    }

    p->mtc.mtCallback = &vt;
    p->mtc.mtCallbackObject = p;

    p->mtc.progress = progress;
    p->mtc.inStream = inStream;
    p->mtc.alloc = &p->alignOffsetAlloc.vt;


    p->mtc.inBufSize = p->props.inBufSize_MT;

    p->mtc.numThreadsMax = p->props.numThreads;

    *isMT = True;

    vt.Parse = XzDecMt_Callback_Parse;
    vt.PreCode = XzDecMt_Callback_PreCode;
    vt.Code = XzDecMt_Callback_Code;
    vt.Write = XzDecMt_Callback_Write;

    {
      BoolInt needContinue;

      SRes res = MtDec_Code(&p->mtc);

      stat->InSize = p->mtc.inProcessed;

      p->inProcessed = p->mtc.inProcessed;
      p->readRes = p->mtc.readRes;
      p->readWasFinished = p->mtc.readWasFinished;
      p->readProcessed = p->mtc.readProcessed;

      tMode = True;
      needContinue = False;

      if (res == SZ_OK)
      {
        if (p->mtc.mtProgress.res != SZ_OK)
        {
          res = p->mtc.mtProgress.res;
          stat->ProgressRes = res;
          stat->CombinedRes_Type = SZ_ERROR_PROGRESS;
        }
        else
          needContinue = p->mtc.needContinue;
      }

      if (!needContinue)
      {
        SRes codeRes;
        BoolInt truncated = False;
        ECoderStatus status;
        CXzUnpacker *dec;

        stat->OutSize = p->outProcessed;

        if (p->finishedDecoderIndex >= 0)
        {
          CXzDecMtThread *coder = &p->coders[(unsigned)p->finishedDecoderIndex];
          codeRes = coder->codeRes;
          dec = &coder->dec;
          status = coder->status;
        }
        else if (p->mainDecoderWasCalled)
        {
          codeRes = p->codeRes;
          dec = &p->dec;
          status = p->status;
          truncated = p->parsing_Truncated;
        }
        else
          return E_FAIL;

        XzStatInfo_SetStat(dec, p->finishMode,
            p->mtc.readProcessed, p->mtc.inProcessed,
            codeRes, status,
            truncated,
            stat);

        if (res == SZ_OK)
        {
          if (p->writeRes != SZ_OK)
          {
            res = p->writeRes;
            stat->CombinedRes_Type = SZ_ERROR_WRITE;
          }
          else if (p->mtc.readRes != SZ_OK && p->mtc.inProcessed == p->mtc.readProcessed)
          {
            res = p->mtc.readRes;
            stat->ReadRes = res;
            stat->CombinedRes_Type = SZ_ERROR_READ;
          }
          else if (p->mainErrorCode != SZ_OK)
          {
            res = p->mainErrorCode;
          }
        }

        stat->CombinedRes = res;
        if (stat->CombinedRes_Type == SZ_OK)
          stat->CombinedRes_Type = res;
        return res;
      }

      PRF_STR("----- decoding ST -----");
    }
  }




  *isMT = False;

  {
    SRes res = XzDecMt_Decode_ST(p

        , tMode

        , stat
        );

    XzStatInfo_SetStat(&p->dec,
        p->finishMode,
        p->readProcessed, p->inProcessed,
        p->codeRes, p->status,
        False,
        stat);

    if (res == SZ_OK)
    {
      if (p->readRes != SZ_OK && p->inProcessed == p->readProcessed)
      {
        res = p->readRes;
        stat->ReadRes = res;
        stat->CombinedRes_Type = SZ_ERROR_READ;
      }

      else if (p->mainErrorCode != SZ_OK)
        res = p->mainErrorCode;

    }

    stat->CombinedRes = res;
    if (stat->CombinedRes_Type == SZ_OK)
      stat->CombinedRes_Type = res;
    return res;
  }
}
