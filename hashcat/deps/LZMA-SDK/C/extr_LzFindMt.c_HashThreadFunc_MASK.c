#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int ptrdiff_t ;
typedef  int UInt32 ;
struct TYPE_15__ {scalar_t__ pos; int historySize; int streamPos; int numHashBytes; int buffer; int /*<<< orphan*/  crc; scalar_t__ hashMask; scalar_t__ fixedHashSize; scalar_t__ hash; } ;
struct TYPE_13__ {int numProcessedBlocks; int /*<<< orphan*/  filledSemaphore; int /*<<< orphan*/  freeSemaphore; int /*<<< orphan*/  cs; int /*<<< orphan*/  wasStopped; scalar_t__ stopWriting; scalar_t__ exit; int /*<<< orphan*/  wasStarted; int /*<<< orphan*/  canStart; } ;
struct TYPE_12__ {int /*<<< orphan*/  cs; } ;
struct TYPE_14__ {int pointerToCurPos; int buffer; int* hashBuf; int /*<<< orphan*/  (* GetHeadsFunc ) (int,int,scalar_t__,scalar_t__,int*,int,int /*<<< orphan*/ ) ;TYPE_2__ hashSync; TYPE_1__ btSync; TYPE_4__* MatchFinder; } ;
typedef  TYPE_2__ CMtSync ;
typedef  TYPE_3__ CMatchFinderMt ;
typedef  TYPE_4__ CMatchFinder ;
typedef  int /*<<< orphan*/  Byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 scalar_t__ FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int kMtHashBlockSize ; 
 int kMtHashNumBlocksMask ; 
 scalar_t__ kMtMaxValForNormalize ; 
 int /*<<< orphan*/  FUNC13 (int,int,scalar_t__,scalar_t__,int*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(CMatchFinderMt *mt)
{
  CMtSync *p = &mt->hashSync;
  for (;;)
  {
    UInt32 numProcessedBlocks = 0;
    FUNC3(&p->canStart);
    FUNC2(&p->wasStarted);

    FUNC5(mt->MatchFinder);

    for (;;)
    {
      if (p->exit)
        return;
      if (p->stopWriting)
      {
        p->numProcessedBlocks = numProcessedBlocks;
        FUNC2(&p->wasStopped);
        break;
      }

      {
        CMatchFinder *mf = mt->MatchFinder;
        if (FUNC7(mf))
        {
          FUNC0(&mt->btSync.cs);
          FUNC0(&mt->hashSync.cs);
          {
            const Byte *beforePtr = FUNC4(mf);
            ptrdiff_t offset;
            FUNC6(mf);
            offset = beforePtr - FUNC4(mf);
            mt->pointerToCurPos -= offset;
            mt->buffer -= offset;
          }
          FUNC1(&mt->btSync.cs);
          FUNC1(&mt->hashSync.cs);
          continue;
        }

        FUNC12(&p->freeSemaphore);

        FUNC9(mf);
        if (mf->pos > (kMtMaxValForNormalize - kMtHashBlockSize))
        {
          UInt32 subValue = (mf->pos - mf->historySize - 1);
          FUNC10(mf, subValue);
          FUNC8(subValue, mf->hash + mf->fixedHashSize, (size_t)mf->hashMask + 1);
        }
        {
          UInt32 *heads = mt->hashBuf + ((numProcessedBlocks++) & kMtHashNumBlocksMask) * kMtHashBlockSize;
          UInt32 num = mf->streamPos - mf->pos;
          heads[0] = 2;
          heads[1] = num;
          if (num >= mf->numHashBytes)
          {
            num = num - mf->numHashBytes + 1;
            if (num > kMtHashBlockSize - 2)
              num = kMtHashBlockSize - 2;
            mt->GetHeadsFunc(mf->buffer, mf->pos, mf->hash + mf->fixedHashSize, mf->hashMask, heads + 2, num, mf->crc);
            heads[0] = 2 + num;
          }
          mf->pos += num;
          mf->buffer += num;
        }
      }

      FUNC11(&p->filledSemaphore);
    }
  }
}