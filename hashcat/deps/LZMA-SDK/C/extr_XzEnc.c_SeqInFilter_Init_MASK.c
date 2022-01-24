#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  p; int /*<<< orphan*/  (* Init ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* SetProps ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_7__ {TYPE_5__ StateCoder; scalar_t__ srcWasFinished; scalar_t__ endPos; scalar_t__ curPos; int /*<<< orphan*/ * buf; } ;
struct TYPE_6__ {int /*<<< orphan*/  propsSize; int /*<<< orphan*/  props; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  SRes ;
typedef  int /*<<< orphan*/  ISzAllocPtr ;
typedef  TYPE_1__ CXzFilter ;
typedef  TYPE_2__ CSeqInFilter ;
typedef  int /*<<< orphan*/  Byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FILTER_BUF_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SZ_ERROR_MEM ; 
 int /*<<< orphan*/  SZ_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static SRes FUNC5(CSeqInFilter *p, const CXzFilter *props, ISzAllocPtr alloc)
{
  if (!p->buf)
  {
    p->buf = (Byte *)FUNC1(alloc, FILTER_BUF_SIZE);
    if (!p->buf)
      return SZ_ERROR_MEM;
  }
  p->curPos = p->endPos = 0;
  p->srcWasFinished = 0;
  FUNC2(FUNC0(&p->StateCoder, props->id, 1, alloc));
  FUNC2(p->StateCoder.SetProps(p->StateCoder.p, props->props, props->propsSize, alloc));
  p->StateCoder.Init(p->StateCoder.p);
  return SZ_OK;
}