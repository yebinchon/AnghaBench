#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  flags; } ;
struct TYPE_16__ {int fd; } ;
struct TYPE_15__ {scalar_t__ count; } ;
struct TYPE_17__ {int async_wfd; int* signal_pipefd; int backend_fd; int emfile_fd; int /*<<< orphan*/  cloexec_lock; int /*<<< orphan*/  wq_mutex; TYPE_5__ wq_async; int /*<<< orphan*/  process_handles; TYPE_5__ child_watcher; scalar_t__ stop_flag; scalar_t__ timer_counter; TYPE_2__ async_io_watcher; int /*<<< orphan*/ * closing_handles; int /*<<< orphan*/  watcher_queue; int /*<<< orphan*/  pending_queue; scalar_t__ nwatchers; int /*<<< orphan*/ * watchers; scalar_t__ nfds; TYPE_1__ active_reqs; scalar_t__ active_handles; int /*<<< orphan*/  handle_queue; int /*<<< orphan*/  prepare_handles; int /*<<< orphan*/  check_handles; int /*<<< orphan*/  async_handles; int /*<<< orphan*/  idle_handles; int /*<<< orphan*/  wq; int /*<<< orphan*/  timer_heap; void* data; } ;
typedef  TYPE_3__ uv_loop_t ;
struct heap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UV_HANDLE_INTERNAL ; 
 int /*<<< orphan*/  FUNC1 (struct heap*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  uv__work_done ; 
 int FUNC9 (TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (TYPE_3__*,TYPE_5__*) ; 

int FUNC15(uv_loop_t* loop) {
  void* saved_data;
  int err;


  saved_data = loop->data;
  FUNC2(loop, 0, sizeof(*loop));
  loop->data = saved_data;

  FUNC1((struct heap*) &loop->timer_heap);
  FUNC0(&loop->wq);
  FUNC0(&loop->idle_handles);
  FUNC0(&loop->async_handles);
  FUNC0(&loop->check_handles);
  FUNC0(&loop->prepare_handles);
  FUNC0(&loop->handle_queue);

  loop->active_handles = 0;
  loop->active_reqs.count = 0;
  loop->nfds = 0;
  loop->watchers = NULL;
  loop->nwatchers = 0;
  FUNC0(&loop->pending_queue);
  FUNC0(&loop->watcher_queue);

  loop->closing_handles = NULL;
  FUNC8(loop);
  loop->async_io_watcher.fd = -1;
  loop->async_wfd = -1;
  loop->signal_pipefd[0] = -1;
  loop->signal_pipefd[1] = -1;
  loop->backend_fd = -1;
  loop->emfile_fd = -1;

  loop->timer_counter = 0;
  loop->stop_flag = 0;

  err = FUNC5(loop);
  if (err)
    return err;

  FUNC6();
  err = FUNC14(loop, &loop->child_watcher);
  if (err)
    goto fail_signal_init;

  FUNC3(&loop->child_watcher);
  loop->child_watcher.flags |= UV_HANDLE_INTERNAL;
  FUNC0(&loop->process_handles);

  err = FUNC13(&loop->cloexec_lock);
  if (err)
    goto fail_rwlock_init;

  err = FUNC11(&loop->wq_mutex);
  if (err)
    goto fail_mutex_init;

  err = FUNC9(loop, &loop->wq_async, uv__work_done);
  if (err)
    goto fail_async_init;

  FUNC3(&loop->wq_async);
  loop->wq_async.flags |= UV_HANDLE_INTERNAL;

  return 0;

fail_async_init:
  FUNC10(&loop->wq_mutex);

fail_mutex_init:
  FUNC12(&loop->cloexec_lock);

fail_rwlock_init:
  FUNC7(loop);

fail_signal_init:
  FUNC4(loop);

  return err;
}