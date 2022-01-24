#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int stop; int /*<<< orphan*/ * inBuf; TYPE_1__* mtCoder; int /*<<< orphan*/  startEvent; int /*<<< orphan*/  thread; } ;
struct TYPE_4__ {int /*<<< orphan*/  allocBig; } ;
typedef  TYPE_2__ CMtCoderThread ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(CMtCoderThread *t)
{
  if (FUNC5(&t->thread))
  {
    t->stop = 1;
    FUNC1(&t->startEvent);
    FUNC4(&t->thread);
    FUNC3(&t->thread);
  }

  FUNC0(&t->startEvent);

  if (t->inBuf)
  {
    FUNC2(t->mtCoder->allocBig, t->inBuf);
    t->inBuf = NULL;
  }
}