#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  flags; } ;
struct TYPE_9__ {scalar_t__ count; } ;
struct TYPE_10__ {int /*<<< orphan*/ * iocp; struct heap* timer_heap; int /*<<< orphan*/  wq_mutex; TYPE_6__ wq_async; scalar_t__ stop_flag; scalar_t__ timer_counter; scalar_t__ active_udp_streams; scalar_t__ active_tcp_streams; int /*<<< orphan*/  poll_peer_sockets; int /*<<< orphan*/ * next_idle_handle; int /*<<< orphan*/ * next_check_handle; int /*<<< orphan*/ * next_prepare_handle; int /*<<< orphan*/ * idle_handles; int /*<<< orphan*/ * prepare_handles; int /*<<< orphan*/ * check_handles; int /*<<< orphan*/ * endgame_handles; int /*<<< orphan*/ * pending_reqs_tail; scalar_t__ active_handles; TYPE_1__ active_reqs; int /*<<< orphan*/  handle_queue; int /*<<< orphan*/  wq; scalar_t__ time; } ;
typedef  TYPE_2__ uv_loop_t ;
struct heap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int UV_ENOMEM ; 
 int /*<<< orphan*/  UV_HANDLE_INTERNAL ; 
 int /*<<< orphan*/  FUNC4 (struct heap*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct heap*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 
 int FUNC8 (TYPE_2__*) ; 
 struct heap* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  uv__work_done ; 
 int FUNC11 (TYPE_2__*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 

int FUNC16(uv_loop_t* loop) {
  struct heap* timer_heap;
  int err;

  /* Initialize libuv itself first */
  FUNC10();

  /* Create an I/O completion port */
  loop->iocp = FUNC1(INVALID_HANDLE_VALUE, NULL, 0, 1);
  if (loop->iocp == NULL)
    return FUNC14(FUNC2());

  /* To prevent uninitialized memory access, loop->time must be initialized
   * to zero before calling uv_update_time for the first time.
   */
  loop->time = 0;
  FUNC15(loop);

  FUNC3(&loop->wq);
  FUNC3(&loop->handle_queue);
  loop->active_reqs.count = 0;
  loop->active_handles = 0;

  loop->pending_reqs_tail = NULL;

  loop->endgame_handles = NULL;

  loop->timer_heap = timer_heap = FUNC9(sizeof(*timer_heap));
  if (timer_heap == NULL) {
    err = UV_ENOMEM;
    goto fail_timers_alloc;
  }

  FUNC4(timer_heap);

  loop->check_handles = NULL;
  loop->prepare_handles = NULL;
  loop->idle_handles = NULL;

  loop->next_prepare_handle = NULL;
  loop->next_check_handle = NULL;
  loop->next_idle_handle = NULL;

  FUNC5(&loop->poll_peer_sockets, 0, sizeof loop->poll_peer_sockets);

  loop->active_tcp_streams = 0;
  loop->active_udp_streams = 0;

  loop->timer_counter = 0;
  loop->stop_flag = 0;

  err = FUNC13(&loop->wq_mutex);
  if (err)
    goto fail_mutex_init;

  err = FUNC11(loop, &loop->wq_async, uv__work_done);
  if (err)
    goto fail_async_init;

  FUNC7(&loop->wq_async);
  loop->wq_async.flags |= UV_HANDLE_INTERNAL;

  err = FUNC8(loop);
  if (err)
    goto fail_async_init;

  return 0;

fail_async_init:
  FUNC12(&loop->wq_mutex);

fail_mutex_init:
  FUNC6(timer_heap);
  loop->timer_heap = NULL;

fail_timers_alloc:
  FUNC0(loop->iocp);
  loop->iocp = INVALID_HANDLE_VALUE;

  return err;
}