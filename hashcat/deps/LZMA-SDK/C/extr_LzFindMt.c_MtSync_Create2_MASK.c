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
typedef  int /*<<< orphan*/  UInt32 ;
struct TYPE_3__ {void* wasCreated; int /*<<< orphan*/  thread; void* needStart; int /*<<< orphan*/  filledSemaphore; int /*<<< orphan*/  freeSemaphore; int /*<<< orphan*/  wasStopped; int /*<<< orphan*/  wasStarted; int /*<<< orphan*/  canStart; void* csWasInitialized; int /*<<< orphan*/  cs; } ;
typedef  int /*<<< orphan*/  THREAD_FUNC_TYPE ;
typedef  int /*<<< orphan*/  SRes ;
typedef  TYPE_1__ CMtSync ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SZ_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 void* True ; 

__attribute__((used)) static SRes FUNC5(CMtSync *p, THREAD_FUNC_TYPE startAddress, void *obj, UInt32 numBlocks)
{
  if (p->wasCreated)
    return SZ_OK;

  FUNC2(FUNC1(&p->cs));
  p->csWasInitialized = True;

  FUNC2(FUNC0(&p->canStart));
  FUNC2(FUNC0(&p->wasStarted));
  FUNC2(FUNC0(&p->wasStopped));
  
  FUNC2(FUNC3(&p->freeSemaphore, numBlocks, numBlocks));
  FUNC2(FUNC3(&p->filledSemaphore, 0, numBlocks));

  p->needStart = True;
  
  FUNC2(FUNC4(&p->thread, startAddress, obj));
  p->wasCreated = True;
  return SZ_OK;
}