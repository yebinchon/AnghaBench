#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int emfile_fd; int backend_fd; scalar_t__ nfds; scalar_t__ nwatchers; int /*<<< orphan*/ * watchers; int /*<<< orphan*/  watcher_queue; int /*<<< orphan*/  pending_queue; int /*<<< orphan*/  cloexec_lock; int /*<<< orphan*/  wq_mutex; int /*<<< orphan*/  wq; } ;
typedef  TYPE_1__ uv_loop_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(uv_loop_t* loop) {
  FUNC7(loop);
  FUNC6(loop);
  FUNC2(loop);

  if (loop->emfile_fd != -1) {
    FUNC3(loop->emfile_fd);
    loop->emfile_fd = -1;
  }

  if (loop->backend_fd != -1) {
    FUNC3(loop->backend_fd);
    loop->backend_fd = -1;
  }

  FUNC9(&loop->wq_mutex);
  FUNC1(FUNC0(&loop->wq) && "thread pool work queue not empty!");
  FUNC1(!FUNC5(loop));
  FUNC10(&loop->wq_mutex);
  FUNC8(&loop->wq_mutex);

  /*
   * Note that all thread pool stuff is finished at this point and
   * it is safe to just destroy rw lock
   */
  FUNC11(&loop->cloexec_lock);

#if 0
  assert(QUEUE_EMPTY(&loop->pending_queue));
  assert(QUEUE_EMPTY(&loop->watcher_queue));
  assert(loop->nfds == 0);
#endif

  FUNC4(loop->watchers);
  loop->watchers = NULL;
  loop->nwatchers = 0;
}