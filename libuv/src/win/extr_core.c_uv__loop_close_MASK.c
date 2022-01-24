#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * close_cb; int /*<<< orphan*/  async_sent; } ;
struct TYPE_7__ {scalar_t__* poll_peer_sockets; int /*<<< orphan*/  iocp; int /*<<< orphan*/ * timer_heap; int /*<<< orphan*/  wq_mutex; int /*<<< orphan*/  wq; TYPE_5__ wq_async; } ;
typedef  TYPE_1__ uv_loop_t ;
typedef  scalar_t__ SOCKET ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ INVALID_SOCKET ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

void FUNC13(uv_loop_t* loop) {
  size_t i;

  FUNC9(loop);

  /* close the async handle without needing an extra loop iteration */
  FUNC3(!loop->wq_async.async_sent);
  loop->wq_async.close_cb = NULL;
  FUNC7(&loop->wq_async);
  FUNC6(&loop->wq_async);

  for (i = 0; i < FUNC0(loop->poll_peer_sockets); i++) {
    SOCKET sock = loop->poll_peer_sockets[i];
    if (sock != 0 && sock != INVALID_SOCKET)
      FUNC4(sock);
  }

  FUNC11(&loop->wq_mutex);
  FUNC3(FUNC2(&loop->wq) && "thread pool work queue not empty!");
  FUNC3(!FUNC8(loop));
  FUNC12(&loop->wq_mutex);
  FUNC10(&loop->wq_mutex);

  FUNC5(loop->timer_heap);
  loop->timer_heap = NULL;

  FUNC1(loop->iocp);
}