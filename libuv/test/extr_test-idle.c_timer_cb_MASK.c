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
typedef  int /*<<< orphan*/  uv_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  check_handle ; 
 int /*<<< orphan*/  close_cb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  idle_handle ; 
 int /*<<< orphan*/  stderr ; 
 int timer_cb_called ; 
 int /*<<< orphan*/  timer_handle ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(uv_timer_t* handle) {
  FUNC0(handle == &timer_handle);

  FUNC3((uv_handle_t*) &idle_handle, close_cb);
  FUNC3((uv_handle_t*) &check_handle, close_cb);
  FUNC3((uv_handle_t*) &timer_handle, close_cb);

  timer_cb_called++;
  FUNC2(stderr, "timer_cb %d\n", timer_cb_called);
  FUNC1(stderr);
}