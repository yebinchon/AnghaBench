#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int UInt32 ;
struct TYPE_6__ {unsigned int dictSize; unsigned int distTableSize; scalar_t__ nowPos64; int /*<<< orphan*/  result; int /*<<< orphan*/  finished; } ;
typedef  int /*<<< orphan*/  SRes ;
typedef  int /*<<< orphan*/  ISzAllocPtr ;
typedef  TYPE_1__ CLzmaEnc ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SZ_OK ; 
 unsigned int kDicLogSizeMax ; 
 int kEndPosModelIndex ; 

__attribute__((used)) static SRes FUNC4(CLzmaEnc *p, UInt32 keepWindowSize, ISzAllocPtr alloc, ISzAllocPtr allocBig)
{
  unsigned i;
  for (i = kEndPosModelIndex / 2; i < kDicLogSizeMax; i++)
    if (p->dictSize <= ((UInt32)1 << i))
      break;
  p->distTableSize = i * 2;

  p->finished = False;
  p->result = SZ_OK;
  FUNC3(FUNC0(p, keepWindowSize, alloc, allocBig));
  FUNC1(p);
  FUNC2(p);
  p->nowPos64 = 0;
  return SZ_OK;
}