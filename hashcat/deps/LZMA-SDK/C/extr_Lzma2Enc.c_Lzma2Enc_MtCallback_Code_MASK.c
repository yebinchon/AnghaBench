#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  mtProgress; } ;
struct TYPE_8__ {size_t outBufSize; size_t* outBufsDataSizes; int /*<<< orphan*/ * coders; TYPE_1__ mtCoder; int /*<<< orphan*/ ** outBufs; int /*<<< orphan*/  alloc; } ;
struct TYPE_7__ {int /*<<< orphan*/  vt; scalar_t__ outSize; scalar_t__ inSize; int /*<<< orphan*/ * mtProgress; } ;
typedef  int /*<<< orphan*/  SRes ;
typedef  TYPE_2__ CMtProgressThunk ;
typedef  TYPE_3__ CLzma2Enc ;
typedef  int /*<<< orphan*/  Byte ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  SZ_ERROR_MEM ; 

__attribute__((used)) static SRes FUNC3(void *pp, unsigned coderIndex, unsigned outBufIndex,
    const Byte *src, size_t srcSize, int finished)
{
  CLzma2Enc *me = (CLzma2Enc *)pp;
  size_t destSize = me->outBufSize;
  SRes res;
  CMtProgressThunk progressThunk;

  Byte *dest = me->outBufs[outBufIndex];

  me->outBufsDataSizes[outBufIndex] = 0;

  if (!dest)
  {
    dest = (Byte *)FUNC0(me->alloc, me->outBufSize);
    if (!dest)
      return SZ_ERROR_MEM;
    me->outBufs[outBufIndex] = dest;
  }

  FUNC2(&progressThunk);
  progressThunk.mtProgress = &me->mtCoder.mtProgress;
  progressThunk.inSize = 0;
  progressThunk.outSize = 0;

  res = FUNC1(me,
      &me->coders[coderIndex],
      NULL, dest, &destSize,
      NULL, src, srcSize,
      finished,
      &progressThunk.vt);

  me->outBufsDataSizes[outBufIndex] = destSize;

  return res;
}