#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uv_run_mode ;
struct TYPE_14__ {scalar_t__ stop_flag; } ;
typedef  TYPE_1__ uv_loop_t ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 scalar_t__ UV_RUN_DEFAULT ; 
 scalar_t__ UV_RUN_NOWAIT ; 
 scalar_t__ UV_RUN_ONCE ; 
 scalar_t__ pGetQueuedCompletionStatusEx ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

int FUNC11(uv_loop_t *loop, uv_run_mode mode) {
  DWORD timeout;
  int r;
  int ran_pending;

  r = FUNC0(loop);
  if (!r)
    FUNC10(loop);

  while (r != 0 && loop->stop_flag == 0) {
    FUNC10(loop);
    FUNC3(loop);

    ran_pending = FUNC9(loop);
    FUNC6(loop);
    FUNC7(loop);

    timeout = 0;
    if ((mode == UV_RUN_ONCE && !ran_pending) || mode == UV_RUN_DEFAULT)
      timeout = FUNC4(loop);

    if (pGetQueuedCompletionStatusEx)
      FUNC1(loop, timeout);
    else
      FUNC2(loop, timeout);


    FUNC5(loop);
    FUNC8(loop);

    if (mode == UV_RUN_ONCE) {
      /* UV_RUN_ONCE implies forward progress: at least one callback must have
       * been invoked when it returns. uv__io_poll() can return without doing
       * I/O (meaning: no callbacks) when its timeout expires - which means we
       * have pending timers that satisfy the forward progress constraint.
       *
       * UV_RUN_NOWAIT makes no guarantees about progress so it's omitted from
       * the check.
       */
      FUNC3(loop);
    }

    r = FUNC0(loop);
    if (mode == UV_RUN_ONCE || mode == UV_RUN_NOWAIT)
      break;
  }

  /* The if statement lets the compiler compile it to a conditional store.
   * Avoids dirtying a cache line.
   */
  if (loop->stop_flag != 0)
    loop->stop_flag = 0;

  return r;
}