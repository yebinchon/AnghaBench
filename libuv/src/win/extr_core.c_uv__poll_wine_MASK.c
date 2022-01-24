#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uv_req_t ;
struct TYPE_5__ {scalar_t__ time; int /*<<< orphan*/  iocp; } ;
typedef  TYPE_1__ uv_loop_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  ULONG_PTR ;
typedef  int /*<<< orphan*/  OVERLAPPED ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,scalar_t__) ; 
 scalar_t__ WAIT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(uv_loop_t* loop, DWORD timeout) {
  DWORD bytes;
  ULONG_PTR key;
  OVERLAPPED* overlapped;
  uv_req_t* req;
  int repeat;
  uint64_t timeout_time;

  timeout_time = loop->time + timeout;

  for (repeat = 0; ; repeat++) {
    FUNC1(loop->iocp,
                              &bytes,
                              &key,
                              &overlapped,
                              timeout);

    if (overlapped) {
      /* Package was dequeued */
      req = FUNC4(overlapped);
      FUNC3(loop, req);

      /* Some time might have passed waiting for I/O,
       * so update the loop time here.
       */
      FUNC5(loop);
    } else if (FUNC0() != WAIT_TIMEOUT) {
      /* Serious error */
      FUNC2(FUNC0(), "GetQueuedCompletionStatus");
    } else if (timeout > 0) {
      /* GetQueuedCompletionStatus can occasionally return a little early.
       * Make sure that the desired timeout target time is reached.
       */
      FUNC5(loop);
      if (timeout_time > loop->time) {
        timeout = (DWORD)(timeout_time - loop->time);
        /* The first call to GetQueuedCompletionStatus should return very
         * close to the target time and the second should reach it, but
         * this is not stated in the documentation. To make sure a busy
         * loop cannot happen, the timeout is increased exponentially
         * starting on the third round.
         */
        timeout += repeat ? (1 << (repeat - 1)) : 0;
        continue;
      }
    }
    break;
  }
}