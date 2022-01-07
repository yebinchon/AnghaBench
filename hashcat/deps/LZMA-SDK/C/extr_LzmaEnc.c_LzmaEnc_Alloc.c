
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef unsigned int UInt32 ;
struct TYPE_11__ {scalar_t__ btMode; int hashMask; void* bigHash; } ;
struct TYPE_9__ {int * litProbs; } ;
struct TYPE_10__ {int mtMode; unsigned int lc; unsigned int lp; unsigned int lclp; scalar_t__ dictSize; int matchFinder; TYPE_3__ matchFinderBase; TYPE_3__* matchFinderObj; int numFastBytes; TYPE_3__ matchFinderMt; TYPE_1__ saveState; int * litProbs; int fastMode; scalar_t__ multiThread; int rc; } ;
typedef int SRes ;
typedef int ISzAllocPtr ;
typedef int CLzmaProb ;
typedef TYPE_2__ CLzmaEnc ;
typedef void* Byte ;


 scalar_t__ ISzAlloc_Alloc (int ,unsigned int) ;
 scalar_t__ LZMA_MATCH_LEN_MAX ;
 int LzmaEnc_FreeLits (TYPE_2__*,int ) ;
 int MatchFinderMt_Create (TYPE_3__*,unsigned int,unsigned int,int ,scalar_t__,int ) ;
 int MatchFinderMt_CreateVTable (TYPE_3__*,int *) ;
 int MatchFinder_Create (TYPE_3__*,scalar_t__,unsigned int,int ,scalar_t__,int ) ;
 int MatchFinder_CreateVTable (TYPE_3__*,int *) ;
 int RINOK (int ) ;
 int RangeEnc_Alloc (int *,int ) ;
 int SZ_ERROR_MEM ;
 int SZ_OK ;
 scalar_t__ kBigHashDicLimit ;
 unsigned int kNumOpts ;

__attribute__((used)) static SRes LzmaEnc_Alloc(CLzmaEnc *p, UInt32 keepWindowSize, ISzAllocPtr alloc, ISzAllocPtr allocBig)
{
  UInt32 beforeSize = kNumOpts;
  if (!RangeEnc_Alloc(&p->rc, alloc))
    return SZ_ERROR_MEM;


  p->mtMode = (p->multiThread && !p->fastMode && (p->matchFinderBase.btMode != 0));


  {
    unsigned lclp = p->lc + p->lp;
    if (!p->litProbs || !p->saveState.litProbs || p->lclp != lclp)
    {
      LzmaEnc_FreeLits(p, alloc);
      p->litProbs = (CLzmaProb *)ISzAlloc_Alloc(alloc, ((UInt32)0x300 << lclp) * sizeof(CLzmaProb));
      p->saveState.litProbs = (CLzmaProb *)ISzAlloc_Alloc(alloc, ((UInt32)0x300 << lclp) * sizeof(CLzmaProb));
      if (!p->litProbs || !p->saveState.litProbs)
      {
        LzmaEnc_FreeLits(p, alloc);
        return SZ_ERROR_MEM;
      }
      p->lclp = lclp;
    }
  }

  p->matchFinderBase.bigHash = (Byte)(p->dictSize > kBigHashDicLimit ? 1 : 0);

  if (beforeSize + p->dictSize < keepWindowSize)
    beforeSize = keepWindowSize - p->dictSize;


  if (p->mtMode)
  {
    RINOK(MatchFinderMt_Create(&p->matchFinderMt, p->dictSize, beforeSize, p->numFastBytes,
        LZMA_MATCH_LEN_MAX
        + 1
        , allocBig));
    p->matchFinderObj = &p->matchFinderMt;
    p->matchFinderBase.bigHash = (Byte)(
        (p->dictSize > kBigHashDicLimit && p->matchFinderBase.hashMask >= 0xFFFFFF) ? 1 : 0);
    MatchFinderMt_CreateVTable(&p->matchFinderMt, &p->matchFinder);
  }
  else

  {
    if (!MatchFinder_Create(&p->matchFinderBase, p->dictSize, beforeSize, p->numFastBytes, LZMA_MATCH_LEN_MAX, allocBig))
      return SZ_ERROR_MEM;
    p->matchFinderObj = &p->matchFinderBase;
    MatchFinder_CreateVTable(&p->matchFinderBase, &p->matchFinder);
  }

  return SZ_OK;
}
