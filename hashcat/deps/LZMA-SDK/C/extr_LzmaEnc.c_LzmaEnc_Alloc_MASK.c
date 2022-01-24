#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int UInt32 ;
struct TYPE_11__ {scalar_t__ btMode; int hashMask; void* bigHash; } ;
struct TYPE_9__ {int /*<<< orphan*/ * litProbs; } ;
struct TYPE_10__ {int mtMode; unsigned int lc; unsigned int lp; unsigned int lclp; scalar_t__ dictSize; int /*<<< orphan*/  matchFinder; TYPE_3__ matchFinderBase; TYPE_3__* matchFinderObj; int /*<<< orphan*/  numFastBytes; TYPE_3__ matchFinderMt; TYPE_1__ saveState; int /*<<< orphan*/ * litProbs; int /*<<< orphan*/  fastMode; scalar_t__ multiThread; int /*<<< orphan*/  rc; } ;
typedef  int /*<<< orphan*/  SRes ;
typedef  int /*<<< orphan*/  ISzAllocPtr ;
typedef  int /*<<< orphan*/  CLzmaProb ;
typedef  TYPE_2__ CLzmaEnc ;
typedef  void* Byte ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ LZMA_MATCH_LEN_MAX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,unsigned int,unsigned int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,scalar_t__,unsigned int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SZ_ERROR_MEM ; 
 int /*<<< orphan*/  SZ_OK ; 
 scalar_t__ kBigHashDicLimit ; 
 unsigned int kNumOpts ; 

__attribute__((used)) static SRes FUNC8(CLzmaEnc *p, UInt32 keepWindowSize, ISzAllocPtr alloc, ISzAllocPtr allocBig)
{
  UInt32 beforeSize = kNumOpts;
  if (!FUNC7(&p->rc, alloc))
    return SZ_ERROR_MEM;

  #ifndef _7ZIP_ST
  p->mtMode = (p->multiThread && !p->fastMode && (p->matchFinderBase.btMode != 0));
  #endif

  {
    unsigned lclp = p->lc + p->lp;
    if (!p->litProbs || !p->saveState.litProbs || p->lclp != lclp)
    {
      FUNC1(p, alloc);
      p->litProbs = (CLzmaProb *)FUNC0(alloc, ((UInt32)0x300 << lclp) * sizeof(CLzmaProb));
      p->saveState.litProbs = (CLzmaProb *)FUNC0(alloc, ((UInt32)0x300 << lclp) * sizeof(CLzmaProb));
      if (!p->litProbs || !p->saveState.litProbs)
      {
        FUNC1(p, alloc);
        return SZ_ERROR_MEM;
      }
      p->lclp = lclp;
    }
  }

  p->matchFinderBase.bigHash = (Byte)(p->dictSize > kBigHashDicLimit ? 1 : 0);

  if (beforeSize + p->dictSize < keepWindowSize)
    beforeSize = keepWindowSize - p->dictSize;

  #ifndef _7ZIP_ST
  if (p->mtMode)
  {
    FUNC6(FUNC2(&p->matchFinderMt, p->dictSize, beforeSize, p->numFastBytes,
        LZMA_MATCH_LEN_MAX
        + 1  /* 18.04 */
        , allocBig));
    p->matchFinderObj = &p->matchFinderMt;
    p->matchFinderBase.bigHash = (Byte)(
        (p->dictSize > kBigHashDicLimit && p->matchFinderBase.hashMask >= 0xFFFFFF) ? 1 : 0);
    FUNC3(&p->matchFinderMt, &p->matchFinder);
  }
  else
  #endif
  {
    if (!FUNC4(&p->matchFinderBase, p->dictSize, beforeSize, p->numFastBytes, LZMA_MATCH_LEN_MAX, allocBig))
      return SZ_ERROR_MEM;
    p->matchFinderObj = &p->matchFinderBase;
    FUNC5(&p->matchFinderBase, &p->matchFinder);
  }
  
  return SZ_OK;
}