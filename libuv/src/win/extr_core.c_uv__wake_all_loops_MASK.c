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
struct TYPE_4__ {scalar_t__ iocp; } ;
typedef  TYPE_1__ uv_loop_t ;

/* Variables and functions */
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__** uv__loops ; 
 int /*<<< orphan*/  uv__loops_lock ; 
 int uv__loops_size ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(void) {
  int i;
  uv_loop_t* loop;

  FUNC2(&uv__loops_lock);
  for (i = 0; i < uv__loops_size; ++i) {
    loop = uv__loops[i];
    FUNC1(loop);
    if (loop->iocp != INVALID_HANDLE_VALUE)
      FUNC0(loop->iocp, 0, 0, NULL);
  }
  FUNC3(&uv__loops_lock);
}