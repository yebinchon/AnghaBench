#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UInt64 ;
struct TYPE_4__ {int /*<<< orphan*/  alloc; int /*<<< orphan*/  xzIndex; int /*<<< orphan*/  outStream; int /*<<< orphan*/ ** outBufs; TYPE_1__* EncBlocks; } ;
struct TYPE_3__ {scalar_t__ totalSize; int /*<<< orphan*/  unpackSize; scalar_t__ headerSize; } ;
typedef  int /*<<< orphan*/  SRes ;
typedef  TYPE_1__ CXzEncBlockInfo ;
typedef  TYPE_2__ CXzEnc ;
typedef  int /*<<< orphan*/  Byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,scalar_t__) ; 
 int XZ_BLOCK_HEADER_SIZE_MAX ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static SRes FUNC4(void *pp, unsigned outBufIndex)
{
  CXzEnc *me = (CXzEnc *)pp;

  const CXzEncBlockInfo *bInfo = &me->EncBlocks[outBufIndex];
  const Byte *data = me->outBufs[outBufIndex];

  FUNC0(FUNC1(me->outStream, data, bInfo->headerSize));

  {
    UInt64 totalPackFull = bInfo->totalSize + FUNC2(bInfo->totalSize);
    FUNC0(FUNC1(me->outStream, data + XZ_BLOCK_HEADER_SIZE_MAX, (size_t)totalPackFull - bInfo->headerSize));
  }

  return FUNC3(&me->xzIndex, bInfo->unpackSize, bInfo->totalSize, me->alloc);
}