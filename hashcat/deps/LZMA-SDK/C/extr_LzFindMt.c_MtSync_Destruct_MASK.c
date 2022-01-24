#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* wasCreated; int /*<<< orphan*/  filledSemaphore; int /*<<< orphan*/  freeSemaphore; int /*<<< orphan*/  wasStopped; int /*<<< orphan*/  wasStarted; int /*<<< orphan*/  canStart; void* csWasInitialized; int /*<<< orphan*/  cs; int /*<<< orphan*/  thread; scalar_t__ needStart; int /*<<< orphan*/  exit; } ;
typedef  TYPE_1__ CMtSync ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* False ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  True ; 

__attribute__((used)) static void FUNC8(CMtSync *p)
{
  if (FUNC7(&p->thread))
  {
    FUNC3(p);
    p->exit = True;
    if (p->needStart)
      FUNC2(&p->canStart);
    FUNC6(&p->thread);
    FUNC5(&p->thread);
  }
  if (p->csWasInitialized)
  {
    FUNC0(&p->cs);
    p->csWasInitialized = False;
  }

  FUNC1(&p->canStart);
  FUNC1(&p->wasStarted);
  FUNC1(&p->wasStopped);
  FUNC4(&p->freeSemaphore);
  FUNC4(&p->filledSemaphore);

  p->wasCreated = False;
}