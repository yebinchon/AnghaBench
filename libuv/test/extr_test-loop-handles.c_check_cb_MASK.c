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
typedef  int /*<<< orphan*/  uv_handle_t ;
typedef  int /*<<< orphan*/  uv_check_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IDLE_COUNT ; 
 int ITERATIONS ; 
 int /*<<< orphan*/  check_cb_called ; 
 int /*<<< orphan*/  check_close_cb ; 
 int /*<<< orphan*/  check_handle ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  idle_1_cb ; 
 int /*<<< orphan*/  idle_1_close_cb ; 
 int /*<<< orphan*/ * idle_1_handles ; 
 int /*<<< orphan*/  idle_2_close_cb ; 
 int /*<<< orphan*/  idle_2_handle ; 
 scalar_t__ idle_2_is_active ; 
 int /*<<< orphan*/  idles_1_active ; 
 int loop_iteration ; 
 int /*<<< orphan*/  prepare_1_close_cb ; 
 int /*<<< orphan*/  prepare_1_handle ; 
 int /*<<< orphan*/  prepare_2_close_cb ; 
 int /*<<< orphan*/  prepare_2_handle ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(uv_check_t* handle) {
  int i, r;

  FUNC2(stderr, "%s", "CHECK_CB\n");
  FUNC1(stderr);
  FUNC0(handle == &check_handle);

  if (loop_iteration < ITERATIONS) {
    /* Make some idle watchers active */
    for (i = 0; i < 1 + (loop_iteration % IDLE_COUNT); i++) {
      r = FUNC4(&idle_1_handles[i], idle_1_cb);
      FUNC0(r == 0);
      idles_1_active++;
    }

  } else {
    /* End of the test - close all handles */
    FUNC3((uv_handle_t*)&prepare_1_handle, prepare_1_close_cb);
    FUNC3((uv_handle_t*)&check_handle, check_close_cb);
    FUNC3((uv_handle_t*)&prepare_2_handle, prepare_2_close_cb);

    for (i = 0; i < IDLE_COUNT; i++) {
      FUNC3((uv_handle_t*)&idle_1_handles[i], idle_1_close_cb);
    }

    /* This handle is closed/recreated every time, close it only if it is
     * active. */
    if (idle_2_is_active) {
      FUNC3((uv_handle_t*)&idle_2_handle, idle_2_close_cb);
    }
  }

  check_cb_called++;
}