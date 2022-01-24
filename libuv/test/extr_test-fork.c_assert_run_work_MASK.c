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
typedef  int /*<<< orphan*/  uv_work_t ;
typedef  int /*<<< orphan*/  uv_loop_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 int /*<<< orphan*/  after_work_cb ; 
 int after_work_cb_count ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ * const,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  work_cb ; 
 int work_cb_count ; 

__attribute__((used)) static void FUNC5(uv_loop_t* const loop) {
  uv_work_t work_req;
  int r;

  FUNC0(work_cb_count == 0);
  FUNC0(after_work_cb_count == 0);
  FUNC2("Queue in %d\n", FUNC1());
  r = FUNC3(loop, &work_req, work_cb, after_work_cb);
  FUNC0(r == 0);
  FUNC2("Running in %d\n", FUNC1());
  FUNC4(loop, UV_RUN_DEFAULT);

  FUNC0(work_cb_count == 1);
  FUNC0(after_work_cb_count == 1);

  /* cleanup  */
  work_cb_count = 0;
  after_work_cb_count = 0;
}