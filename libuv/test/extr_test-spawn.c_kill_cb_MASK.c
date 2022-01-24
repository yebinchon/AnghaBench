#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  pid; } ;
typedef  TYPE_1__ uv_process_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
typedef  int int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SIGKILL ; 
 int SIGTERM ; 
 int UV_ESRCH ; 
 int /*<<< orphan*/  close_cb ; 
 int /*<<< orphan*/  exit_cb_called ; 
 scalar_t__ no_term_signal ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(uv_process_t* process,
                    int64_t exit_status,
                    int term_signal) {
  int err;

  FUNC1("exit_cb\n");
  exit_cb_called++;
#ifdef _WIN32
  ASSERT(exit_status == 1);
#else
  FUNC0(exit_status == 0);
#endif
#if defined(__APPLE__) || defined(__MVS__)
  /*
   * At least starting with Darwin Kernel Version 16.4.0, sending a SIGTERM to a
   * process that is still starting up kills it with SIGKILL instead of SIGTERM.
   * See: https://github.com/libuv/libuv/issues/1226
   */
  ASSERT(no_term_signal || term_signal == SIGTERM || term_signal == SIGKILL);
#else
  FUNC0(no_term_signal || term_signal == SIGTERM);
#endif
  FUNC2((uv_handle_t*)process, close_cb);

  /*
   * Sending signum == 0 should check if the
   * child process is still alive, not kill it.
   * This process should be dead.
   */
  err = FUNC3(process->pid, 0);
  FUNC0(err == UV_ESRCH);
}