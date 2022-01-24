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
typedef  scalar_t__ WRes ;
struct TYPE_5__ {int /*<<< orphan*/  thread; } ;
typedef  int /*<<< orphan*/  SRes ;
typedef  TYPE_1__ CMtDecThread ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  SZ_OK ; 
 int /*<<< orphan*/  ThreadFunc ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static SRes FUNC4(CMtDecThread *t)
{
  WRes wres = FUNC1(t);
  // wres = 17; // for test
  if (wres == 0)
  {
    if (FUNC3(&t->thread))
      return SZ_OK;
    wres = FUNC2(&t->thread, ThreadFunc, t);
    if (wres == 0)
      return SZ_OK;
  }
  return FUNC0(wres);
}