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
struct TYPE_3__ {int /*<<< orphan*/ * crossBlock; int /*<<< orphan*/  alloc; int /*<<< orphan*/ * threads; int /*<<< orphan*/  exitThread; } ;
typedef  TYPE_1__ CMtDec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned int MTDEC__THREADS_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  True ; 

__attribute__((used)) static void FUNC2(CMtDec *p)
{
  unsigned i;

  p->exitThread = True;

  for (i = 0; i < MTDEC__THREADS_MAX; i++)
    FUNC1(&p->threads[i]);

  // Event_Close(&p->finishedEvent);

  if (p->crossBlock)
  {
    FUNC0(p->alloc, p->crossBlock);
    p->crossBlock = NULL;
  }
}