#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int signum; int flags; void* signal_cb; } ;
typedef  TYPE_1__ uv_signal_t ;
typedef  void* uv_signal_cb ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int UV_EINVAL ; 
 int UV_SIGNAL_ONE_SHOT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int) ; 
 int FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  uv__signal_tree ; 
 int /*<<< orphan*/  uv__signal_tree_s ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(uv_signal_t* handle,
                            uv_signal_cb signal_cb,
                            int signum,
                            int oneshot) {
  sigset_t saved_sigmask;
  int err;
  uv_signal_t* first_handle;

  FUNC1(!FUNC3(handle));

  /* If the user supplies signum == 0, then return an error already. If the
   * signum is otherwise invalid then uv__signal_register will find out
   * eventually.
   */
  if (signum == 0)
    return UV_EINVAL;

  /* Short circuit: if the signal watcher is already watching {signum} don't
   * go through the process of deregistering and registering the handler.
   * Additionally, this avoids pending signals getting lost in the small
   * time frame that handle->signum == 0.
   */
  if (signum == handle->signum) {
    handle->signal_cb = signal_cb;
    return 0;
  }

  /* If the signal handler was already active, stop it first. */
  if (handle->signum != 0) {
    FUNC7(handle);
  }

  FUNC4(&saved_sigmask);

  /* If at this point there are no active signal watchers for this signum (in
   * any of the loops), it's time to try and register a handler for it here.
   * Also in case there's only one-shot handlers and a regular handler comes in.
   */
  first_handle = FUNC5(signum);
  if (first_handle == NULL ||
      (!oneshot && (first_handle->flags & UV_SIGNAL_ONE_SHOT))) {
    err = FUNC6(signum, oneshot);
    if (err) {
      /* Registering the signal handler failed. Must be an invalid signal. */
      FUNC8(&saved_sigmask);
      return err;
    }
  }

  handle->signum = signum;
  if (oneshot)
    handle->flags |= UV_SIGNAL_ONE_SHOT;

  FUNC0(uv__signal_tree_s, &uv__signal_tree, handle);

  FUNC8(&saved_sigmask);

  handle->signal_cb = signal_cb;
  FUNC2(handle);

  return 0;
}