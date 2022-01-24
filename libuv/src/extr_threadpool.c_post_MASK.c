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
typedef  enum uv__work_kind { ____Placeholder_uv__work_kind } uv__work_kind ;
typedef  int /*<<< orphan*/  QUEUE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int UV__WORK_SLOW_IO ; 
 int /*<<< orphan*/  cond ; 
 scalar_t__ idle_threads ; 
 int /*<<< orphan*/  mutex ; 
 int /*<<< orphan*/  run_slow_work_message ; 
 int /*<<< orphan*/  slow_io_pending_wq ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wq ; 

__attribute__((used)) static void FUNC5(QUEUE* q, enum uv__work_kind kind) {
  FUNC3(&mutex);
  if (kind == UV__WORK_SLOW_IO) {
    /* Insert into a separate queue. */
    FUNC1(&slow_io_pending_wq, q);
    if (!FUNC0(&run_slow_work_message)) {
      /* Running slow I/O tasks is already scheduled => Nothing to do here.
         The worker that runs said other task will schedule this one as well. */
      FUNC4(&mutex);
      return;
    }
    q = &run_slow_work_message;
  }

  FUNC1(&wq, q);
  if (idle_threads > 0)
    FUNC2(&cond);
  FUNC4(&mutex);
}