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
typedef  int /*<<< orphan*/  uv_prepare_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int loop_iteration ; 
 int /*<<< orphan*/  prepare_2_cb_called ; 
 int /*<<< orphan*/  prepare_2_handle ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(uv_prepare_t* handle) {
  int r;

  FUNC2(stderr, "%s", "PREPARE_2_CB\n");
  FUNC1(stderr);
  FUNC0(handle == &prepare_2_handle);

  /* Prepare_2 gets started by prepare_1 when (loop_iteration % 2 == 0), and it
   * stops itself immediately. A started watcher is not queued until the next
   * round, so when this callback is made (loop_iteration % 2 == 0) cannot be
   * true. */
  FUNC0(loop_iteration % 2 != 0);

  r = FUNC3((uv_prepare_t*)handle);
  FUNC0(r == 0);

  prepare_2_cb_called++;
}