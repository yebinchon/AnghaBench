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
typedef  int /*<<< orphan*/  uv_timer_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
struct TYPE_4__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ uv_async_t ;
struct TYPE_5__ {int /*<<< orphan*/  handles_seen; TYPE_1__* async_handles; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_2__* container ; 
 int done ; 
 int /*<<< orphan*/  thread_id ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(uv_timer_t* handle) {
  unsigned i;

  done = 1;
  FUNC1(0 == FUNC3(&thread_id));

  for (i = 0; i < FUNC0(container->async_handles); i++) {
    uv_async_t* handle = container->async_handles + i;

    if (handle->data != NULL)
      container->handles_seen++;

    FUNC2((uv_handle_t*) handle, NULL);
  }

  FUNC2((uv_handle_t*) handle, NULL);
}