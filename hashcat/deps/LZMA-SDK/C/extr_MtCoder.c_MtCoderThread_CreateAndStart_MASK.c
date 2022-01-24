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
typedef  scalar_t__ WRes ;
struct TYPE_4__ {int /*<<< orphan*/  startEvent; int /*<<< orphan*/  thread; int /*<<< orphan*/  stop; } ;
typedef  int /*<<< orphan*/  SRes ;
typedef  TYPE_1__ CMtCoderThread ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  SZ_OK ; 
 int /*<<< orphan*/  ThreadFunc ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static SRes FUNC5(CMtCoderThread *t)
{
  WRes wres = FUNC0(&t->startEvent);
  if (wres == 0)
  {
    t->stop = False;
    if (!FUNC4(&t->thread))
      wres = FUNC3(&t->thread, ThreadFunc, t);
    if (wres == 0)
      wres = FUNC1(&t->startEvent);
  }
  if (wres == 0)
    return SZ_OK;
  return FUNC2(wres);
}