#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uv_timer_t ;
typedef  int /*<<< orphan*/  uv_loop_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 int /*<<< orphan*/  timer_cb ; 
 int timer_cb_called ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void) {
  uv_loop_t* loop;
  uv_timer_t timer_handle;

  loop = FUNC1();

  timer_cb_called = 0; /* Reset for the child. */

  FUNC0(0 == FUNC3(loop, &timer_handle));
  FUNC0(0 == FUNC4(&timer_handle, timer_cb, 1, 0));
  FUNC0(0 == FUNC2(loop, UV_RUN_DEFAULT));
  FUNC0(1 == timer_cb_called);
}