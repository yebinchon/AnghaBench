#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* loop; int /*<<< orphan*/  queue; } ;
typedef  TYPE_2__ uv_process_t ;
struct TYPE_5__ {int /*<<< orphan*/  child_watcher; int /*<<< orphan*/  process_handles; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(uv_process_t* handle) {
  FUNC1(&handle->queue);
  FUNC2(handle);
  if (FUNC0(&handle->loop->process_handles))
    FUNC3(&handle->loop->child_watcher);
}