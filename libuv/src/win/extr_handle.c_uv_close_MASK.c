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
typedef  int /*<<< orphan*/  uv_udp_t ;
typedef  int /*<<< orphan*/  uv_tty_t ;
typedef  int /*<<< orphan*/  uv_timer_t ;
typedef  int /*<<< orphan*/  uv_tcp_t ;
typedef  int /*<<< orphan*/  uv_signal_t ;
typedef  int /*<<< orphan*/  uv_process_t ;
typedef  int /*<<< orphan*/  uv_prepare_t ;
typedef  int /*<<< orphan*/  uv_poll_t ;
typedef  int /*<<< orphan*/  uv_pipe_t ;
typedef  int /*<<< orphan*/  uv_loop_t ;
typedef  int /*<<< orphan*/  uv_idle_t ;
struct TYPE_5__ {int flags; int type; int /*<<< orphan*/  close_cb; int /*<<< orphan*/ * loop; } ;
typedef  TYPE_1__ uv_handle_t ;
typedef  int /*<<< orphan*/  uv_fs_poll_t ;
typedef  int /*<<< orphan*/  uv_fs_event_t ;
typedef  int /*<<< orphan*/  uv_close_cb ;
typedef  int /*<<< orphan*/  uv_check_t ;
typedef  int /*<<< orphan*/  uv_async_t ;

/* Variables and functions */
#define  UV_ASYNC 141 
#define  UV_CHECK 140 
#define  UV_FS_EVENT 139 
#define  UV_FS_POLL 138 
 int UV_HANDLE_CLOSING ; 
#define  UV_IDLE 137 
#define  UV_NAMED_PIPE 136 
#define  UV_POLL 135 
#define  UV_PREPARE 134 
#define  UV_PROCESS 133 
#define  UV_SIGNAL 132 
#define  UV_TCP 131 
#define  UV_TIMER 130 
#define  UV_TTY 129 
#define  UV_UDP 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void FUNC18(uv_handle_t* handle, uv_close_cb cb) {
  uv_loop_t* loop = handle->loop;

  if (handle->flags & UV_HANDLE_CLOSING) {
    FUNC1(0);
    return;
  }

  handle->close_cb = cb;

  /* Handle-specific close actions */
  switch (handle->type) {
    case UV_TCP:
      FUNC13(loop, (uv_tcp_t*)handle);
      return;

    case UV_NAMED_PIPE:
      FUNC8(loop, (uv_pipe_t*) handle);
      return;

    case UV_TTY:
      FUNC15((uv_tty_t*) handle);
      return;

    case UV_UDP:
      FUNC16(loop, (uv_udp_t*) handle);
      return;

    case UV_POLL:
      FUNC9(loop, (uv_poll_t*) handle);
      return;

    case UV_TIMER:
      FUNC14((uv_timer_t*)handle);
      FUNC3(handle);
      FUNC17(loop, handle);
      return;

    case UV_PREPARE:
      FUNC10((uv_prepare_t*)handle);
      FUNC3(handle);
      FUNC17(loop, handle);
      return;

    case UV_CHECK:
      FUNC5((uv_check_t*)handle);
      FUNC3(handle);
      FUNC17(loop, handle);
      return;

    case UV_IDLE:
      FUNC7((uv_idle_t*)handle);
      FUNC3(handle);
      FUNC17(loop, handle);
      return;

    case UV_ASYNC:
      FUNC4(loop, (uv_async_t*) handle);
      return;

    case UV_SIGNAL:
      FUNC12(loop, (uv_signal_t*) handle);
      return;

    case UV_PROCESS:
      FUNC11(loop, (uv_process_t*) handle);
      return;

    case UV_FS_EVENT:
      FUNC6(loop, (uv_fs_event_t*) handle);
      return;

    case UV_FS_POLL:
      FUNC2((uv_fs_poll_t*) handle);
      FUNC3(handle);
      return;

    default:
      /* Not supported */
      FUNC0();
  }
}