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
typedef  int /*<<< orphan*/  uv_loop_t ;
struct TYPE_4__ {int /*<<< orphan*/ * loop; } ;
typedef  TYPE_1__ uv_idle_t ;

/* Variables and functions */
 int /*<<< orphan*/  idle_cb ; 
 int /*<<< orphan*/  idle_handle ; 
 int /*<<< orphan*/  timer_cb ; 
 int /*<<< orphan*/  timer_handle ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(uv_idle_t* handle) {
  uv_loop_t* loop = handle->loop;
  FUNC2(handle);
  FUNC0(loop, &idle_handle);
  FUNC1(&idle_handle, idle_cb);
  FUNC3(loop, &timer_handle);
  FUNC4(&timer_handle, timer_cb, 0, 0);
}