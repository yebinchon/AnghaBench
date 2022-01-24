#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ outBufSize; int /*<<< orphan*/ ** outBufs; int /*<<< orphan*/  mtCoder_WasConstructed; int /*<<< orphan*/ * lzmaf_Items; int /*<<< orphan*/  xzIndex; } ;
typedef  TYPE_1__ CXzEnc ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int MTCODER__BLOCKS_MAX ; 
 unsigned int MTCODER__THREADS_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(CXzEnc *p)
{
  unsigned i;

  FUNC1(&p->xzIndex);

  for (i = 0; i < MTCODER__THREADS_MAX; i++)
    FUNC0(&p->lzmaf_Items[i]);

  #ifndef _7ZIP_ST
  p->mtCoder_WasConstructed = False;
  {
    for (i = 0; i < MTCODER__BLOCKS_MAX; i++)
      p->outBufs[i] = NULL;
    p->outBufSize = 0;
  }
  #endif
}