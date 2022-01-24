#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int signum; int /*<<< orphan*/  caught_signals; TYPE_1__* loop; } ;
typedef  TYPE_2__ uv_signal_t ;
struct TYPE_11__ {int signum; TYPE_2__* handle; } ;
typedef  TYPE_3__ uv__signal_msg_t ;
struct TYPE_9__ {int /*<<< orphan*/ * signal_pipefd; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINTR ; 
 int EWOULDBLOCK ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC3 (int) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  uv__signal_tree ; 
 int /*<<< orphan*/  uv__signal_tree_s ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 

__attribute__((used)) static void FUNC7(int signum) {
  uv__signal_msg_t msg;
  uv_signal_t* handle;
  int saved_errno;

  saved_errno = errno;
  FUNC2(&msg, 0, sizeof msg);

  if (FUNC4()) {
    errno = saved_errno;
    return;
  }

  for (handle = FUNC3(signum);
       handle != NULL && handle->signum == signum;
       handle = FUNC0(uv__signal_tree_s, &uv__signal_tree, handle)) {
    int r;

    msg.signum = signum;
    msg.handle = handle;

    /* write() should be atomic for small data chunks, so the entire message
     * should be written at once. In theory the pipe could become full, in
     * which case the user is out of luck.
     */
    do {
      r = FUNC6(handle->loop->signal_pipefd[1], &msg, sizeof msg);
    } while (r == -1 && errno == EINTR);

    FUNC1(r == sizeof msg ||
           (r == -1 && (errno == EAGAIN || errno == EWOULDBLOCK)));

    if (r != -1)
      handle->caught_signals++;
  }

  FUNC5();
  errno = saved_errno;
}