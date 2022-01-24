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
struct TYPE_3__ {int /*<<< orphan*/  filledSemaphore; int /*<<< orphan*/  freeSemaphore; int /*<<< orphan*/  wasStopped; int /*<<< orphan*/  wasStarted; int /*<<< orphan*/  canStart; int /*<<< orphan*/  thread; void* csWasEntered; void* csWasInitialized; void* wasCreated; } ;
typedef  TYPE_1__ CMtSync ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* False ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(CMtSync *p)
{
  p->wasCreated = False;
  p->csWasInitialized = False;
  p->csWasEntered = False;
  FUNC2(&p->thread);
  FUNC0(&p->canStart);
  FUNC0(&p->wasStarted);
  FUNC0(&p->wasStopped);
  FUNC1(&p->freeSemaphore);
  FUNC1(&p->filledSemaphore);
}