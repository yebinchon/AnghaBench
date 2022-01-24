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
typedef  int /*<<< orphan*/  uv_loop_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  done_cb ; 
 scalar_t__ pause_reqs ; 
 scalar_t__ pause_sems ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,unsigned long) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  work_cb ; 

__attribute__((used)) static void FUNC7(void) {
  uv_loop_t* loop;
  char buf[64];
  size_t i;

  FUNC3(buf,
           sizeof(buf),
           "UV_THREADPOOL_SIZE=%lu",
           (unsigned long)FUNC0(pause_reqs));
  FUNC2(buf);

  loop = FUNC4();
  for (i = 0; i < FUNC0(pause_reqs); i += 1) {
    FUNC1(0 == FUNC6(pause_sems + i, 0));
    FUNC1(0 == FUNC5(loop, pause_reqs + i, work_cb, done_cb));
  }
}