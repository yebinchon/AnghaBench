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
struct TYPE_3__ {int /*<<< orphan*/  canWrite; int /*<<< orphan*/  canRead; int /*<<< orphan*/  thread; } ;
typedef  TYPE_1__ CMtDecThread ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(CMtDecThread *t)
{
  if (FUNC4(&t->thread))
  {
    FUNC1(&t->canWrite); /* we can disable it. There are no threads waiting canWrite in normal cases */
    FUNC1(&t->canRead);
    FUNC3(&t->thread);
    FUNC2(&t->thread);
  }

  FUNC0(&t->canRead);
  FUNC0(&t->canWrite);
}