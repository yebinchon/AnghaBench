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
 int ITERATIONS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int loop_iteration ; 
 int /*<<< orphan*/  prepare_1_cb_called ; 
 int /*<<< orphan*/  prepare_1_handle ; 
 int /*<<< orphan*/  prepare_2_cb ; 
 int /*<<< orphan*/  prepare_2_handle ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(uv_prepare_t* handle) {
  int r;

  FUNC2(stderr, "%s", "PREPARE_1_CB\n");
  FUNC1(stderr);
  FUNC0(handle == &prepare_1_handle);

  if (loop_iteration % 2 == 0) {
    r = FUNC4(&prepare_2_handle, prepare_2_cb);
    FUNC0(r == 0);
  }

  prepare_1_cb_called++;
  loop_iteration++;

  FUNC3("Loop iteration %d of %d.\n", loop_iteration, ITERATIONS);
}