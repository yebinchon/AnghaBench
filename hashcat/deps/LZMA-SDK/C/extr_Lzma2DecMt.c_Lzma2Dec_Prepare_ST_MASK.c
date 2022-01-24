#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ inBufSize_ST; } ;
struct TYPE_5__ {int /*<<< orphan*/  vt; } ;
struct TYPE_7__ {scalar_t__ inBufSize; int /*<<< orphan*/  dec; TYPE_2__ props; int /*<<< orphan*/ * inBuf; int /*<<< orphan*/  allocMid; TYPE_1__ alignOffsetAlloc; int /*<<< orphan*/  prop; scalar_t__ dec_created; } ;
typedef  int /*<<< orphan*/  SRes ;
typedef  TYPE_3__ CLzma2DecMt ;
typedef  int /*<<< orphan*/  Byte ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SZ_ERROR_MEM ; 
 int /*<<< orphan*/  SZ_OK ; 
 scalar_t__ True ; 

__attribute__((used)) static SRes FUNC6(CLzma2DecMt *p)
{
  if (!p->dec_created)
  {
    FUNC3(&p->dec);
    p->dec_created = True;
  }

  FUNC5(FUNC2(&p->dec, p->prop, &p->alignOffsetAlloc.vt));

  if (!p->inBuf || p->inBufSize != p->props.inBufSize_ST)
  {
    FUNC1(p->allocMid, p->inBuf);
    p->inBufSize = 0;
    p->inBuf = (Byte *)FUNC0(p->allocMid, p->props.inBufSize_ST);
    if (!p->inBuf)
      return SZ_ERROR_MEM;
    p->inBufSize = p->props.inBufSize_ST;
  }

  FUNC4(&p->dec);
  
  return SZ_OK;
}