#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UInt32 ;
struct TYPE_5__ {int /*<<< orphan*/  csWasEntered; int /*<<< orphan*/  cs; int /*<<< orphan*/  needStart; } ;
struct TYPE_6__ {scalar_t__ pos; scalar_t__ cyclicBufferSize; int /*<<< orphan*/  son; scalar_t__ btBuf; TYPE_1__ hashSync; } ;
typedef  TYPE_1__ CMtSync ;
typedef  TYPE_2__ CMatchFinderMt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  True ; 
 scalar_t__ kMtBtBlockSize ; 
 scalar_t__ kMtBtNumBlocksMask ; 
 scalar_t__ kMtMaxValForNormalize ; 

__attribute__((used)) static void FUNC4(CMatchFinderMt *p, UInt32 globalBlockIndex)
{
  CMtSync *sync = &p->hashSync;
  if (!sync->needStart)
  {
    FUNC1(&sync->cs);
    sync->csWasEntered = True;
  }
  
  FUNC0(p, p->btBuf + (globalBlockIndex & kMtBtNumBlocksMask) * kMtBtBlockSize);

  if (p->pos > kMtMaxValForNormalize - kMtBtBlockSize)
  {
    UInt32 subValue = p->pos - p->cyclicBufferSize;
    FUNC3(subValue, p->son, (size_t)p->cyclicBufferSize * 2);
    p->pos -= subValue;
  }

  if (!sync->needStart)
  {
    FUNC2(&sync->cs);
    sync->csWasEntered = False;
  }
}