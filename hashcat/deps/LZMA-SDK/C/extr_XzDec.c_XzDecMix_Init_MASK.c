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
struct TYPE_15__ {unsigned int numCoders; scalar_t__* ids; size_t outBufSize; int /*<<< orphan*/  alloc; TYPE_1__* coders; int /*<<< orphan*/ * outBuf; } ;
struct TYPE_14__ {TYPE_2__* filters; } ;
struct TYPE_13__ {scalar_t__ id; int /*<<< orphan*/  propsSize; int /*<<< orphan*/  props; } ;
struct TYPE_12__ {int /*<<< orphan*/  p; int /*<<< orphan*/  (* SetProps ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  SRes ;
typedef  TYPE_1__ IStateCoder ;
typedef  TYPE_2__ CXzFilter ;
typedef  TYPE_3__ CXzBlock ;
typedef  TYPE_4__ CMixCoder ;
typedef  int /*<<< orphan*/  Byte ;
typedef  scalar_t__ BoolInt ;

/* Variables and functions */
 scalar_t__ False ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,unsigned int,scalar_t__,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SZ_OK ; 
 scalar_t__ True ; 
 unsigned int FUNC5 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static SRes FUNC7(CMixCoder *p, const CXzBlock *block, Byte *outBuf, size_t outBufSize)
{
  unsigned i;
  BoolInt needReInit = True;
  unsigned numFilters = FUNC5(block);

  if (numFilters == p->numCoders && ((p->outBuf && outBuf) || (!p->outBuf && !outBuf)))
  {
    needReInit = False;
    for (i = 0; i < numFilters; i++)
      if (p->ids[i] != block->filters[numFilters - 1 - i].id)
      {
        needReInit = True;
        break;
      }
  }

  // p->SingleBufMode = (outBuf != NULL);
  p->outBuf = outBuf;
  p->outBufSize = outBufSize;

  // p->SingleBufMode = False;
  // outBuf = NULL;
  
  if (needReInit)
  {
    FUNC0(p);
    for (i = 0; i < numFilters; i++)
    {
      FUNC4(FUNC3(p, i, block->filters[numFilters - 1 - i].id, outBuf, outBufSize));
    }
    p->numCoders = numFilters;
  }
  else
  {
    FUNC4(FUNC2(p, 0, block->filters[numFilters - 1].id, outBuf, outBufSize));
  }

  for (i = 0; i < numFilters; i++)
  {
    const CXzFilter *f = &block->filters[numFilters - 1 - i];
    IStateCoder *sc = &p->coders[i];
    FUNC4(sc->SetProps(sc->p, f->props, f->propsSize, p->alloc));
  }
  
  FUNC1(p);
  return SZ_OK;
}