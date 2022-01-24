#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int UInt32 ;
struct TYPE_4__ {int historySize; int* hashBuf; int* btBuf; int /*<<< orphan*/  btSync; int /*<<< orphan*/  hashSync; int /*<<< orphan*/ * MatchFinder; } ;
typedef  int /*<<< orphan*/  SRes ;
typedef  int /*<<< orphan*/  ISzAllocPtr ;
typedef  TYPE_1__ CMatchFinderMt ;
typedef  int /*<<< orphan*/  CMatchFinder ;

/* Variables and functions */
 int /*<<< orphan*/  BtThreadFunc2 ; 
 int /*<<< orphan*/  HashThreadFunc2 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SZ_ERROR_MEM ; 
 int /*<<< orphan*/  SZ_ERROR_PARAM ; 
 int /*<<< orphan*/  SZ_OK ; 
 int kBtBufferSize ; 
 int kHashBufferSize ; 
 int kMtBtBlockSize ; 
 int /*<<< orphan*/  kMtBtNumBlocks ; 
 scalar_t__ kMtHashBlockSize ; 
 int /*<<< orphan*/  kMtHashNumBlocks ; 

SRes FUNC4(CMatchFinderMt *p, UInt32 historySize, UInt32 keepAddBufferBefore,
    UInt32 matchMaxLen, UInt32 keepAddBufferAfter, ISzAllocPtr alloc)
{
  CMatchFinder *mf = p->MatchFinder;
  p->historySize = historySize;
  if (kMtBtBlockSize <= matchMaxLen * 4)
    return SZ_ERROR_PARAM;
  if (!p->hashBuf)
  {
    p->hashBuf = (UInt32 *)FUNC0(alloc, (kHashBufferSize + kBtBufferSize) * sizeof(UInt32));
    if (!p->hashBuf)
      return SZ_ERROR_MEM;
    p->btBuf = p->hashBuf + kHashBufferSize;
  }
  keepAddBufferBefore += (kHashBufferSize + kBtBufferSize);
  keepAddBufferAfter += kMtHashBlockSize;
  if (!FUNC1(mf, historySize, keepAddBufferBefore, matchMaxLen, keepAddBufferAfter, alloc))
    return SZ_ERROR_MEM;

  FUNC3(FUNC2(&p->hashSync, HashThreadFunc2, p, kMtHashNumBlocks));
  FUNC3(FUNC2(&p->btSync, BtThreadFunc2, p, kMtBtNumBlocks));
  return SZ_OK;
}