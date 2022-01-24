#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  rc; int /*<<< orphan*/  nowPos64; scalar_t__ finished; } ;
typedef  scalar_t__ SRes ;
typedef  int /*<<< orphan*/  ICompressProgress ;
typedef  TYPE_1__ CLzmaEnc ;
typedef  scalar_t__ Byte ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ SZ_ERROR_PROGRESS ; 
 scalar_t__ SZ_OK ; 

__attribute__((used)) static SRes FUNC4(CLzmaEnc *p, ICompressProgress *progress)
{
  SRes res = SZ_OK;

  #ifndef _7ZIP_ST
  Byte allocaDummy[0x300];
  allocaDummy[0] = 0;
  allocaDummy[1] = allocaDummy[0];
  #endif

  for (;;)
  {
    res = FUNC1(p, 0, 0);
    if (res != SZ_OK || p->finished)
      break;
    if (progress)
    {
      res = FUNC0(progress, p->nowPos64, FUNC3(&p->rc));
      if (res != SZ_OK)
      {
        res = SZ_ERROR_PROGRESS;
        break;
      }
    }
  }
  
  FUNC2(p);

  /*
  if (res == SZ_OK && !Inline_MatchFinder_IsFinishedOK(&p->matchFinderBase))
    res = SZ_ERROR_FAIL;
  }
  */

  return res;
}