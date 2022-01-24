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
typedef  scalar_t__ UInt32 ;
struct TYPE_3__ {scalar_t__ numProcessedBlocks; void* needStart; int /*<<< orphan*/  freeSemaphore; int /*<<< orphan*/  filledSemaphore; int /*<<< orphan*/  wasStopped; scalar_t__ csWasEntered; int /*<<< orphan*/  cs; void* stopWriting; int /*<<< orphan*/  thread; } ;
typedef  TYPE_1__ CMtSync ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ False ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* True ; 

__attribute__((used)) static void FUNC5(CMtSync *p)
{
  UInt32 myNumBlocks = p->numProcessedBlocks;
  if (!FUNC4(&p->thread) || p->needStart)
    return;
  p->stopWriting = True;
  if (p->csWasEntered)
  {
    FUNC0(&p->cs);
    p->csWasEntered = False;
  }
  FUNC2(&p->freeSemaphore);
 
  FUNC1(&p->wasStopped);

  while (myNumBlocks++ != p->numProcessedBlocks)
  {
    FUNC3(&p->filledSemaphore);
    FUNC2(&p->freeSemaphore);
  }
  p->needStart = True;
}