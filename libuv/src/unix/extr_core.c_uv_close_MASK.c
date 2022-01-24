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
typedef  int /*<<< orphan*/  uv_timer_t ;
typedef  int /*<<< orphan*/  uv_tcp_t ;
typedef  int /*<<< orphan*/  uv_stream_t ;
typedef  int /*<<< orphan*/  uv_signal_t ;
typedef  int /*<<< orphan*/  uv_process_t ;
typedef  int /*<<< orphan*/  uv_prepare_t ;
typedef  int /*<<< orphan*/  uv_poll_t ;
typedef  int /*<<< orphan*/  uv_pipe_t ;
typedef  int /*<<< orphan*/  uv_idle_t ;
struct TYPE_5__ {int type; int /*<<< orphan*/  close_cb; int /*<<< orphan*/  flags; } ;
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
 int /*<<< orphan*/  UV_HANDLE_CLOSING ; 
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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

void FUNC17(uv_handle_t* handle, uv_close_cb close_cb) {
  FUNC0(!FUNC6(handle));

  handle->flags |= UV_HANDLE_CLOSING;
  handle->close_cb = close_cb;

  switch (handle->type) {
  case UV_NAMED_PIPE:
    FUNC8((uv_pipe_t*)handle);
    break;

  case UV_TTY:
    FUNC13((uv_stream_t*)handle);
    break;

  case UV_TCP:
    FUNC14((uv_tcp_t*)handle);
    break;

  case UV_UDP:
    FUNC16((uv_udp_t*)handle);
    break;

  case UV_PREPARE:
    FUNC10((uv_prepare_t*)handle);
    break;

  case UV_CHECK:
    FUNC2((uv_check_t*)handle);
    break;

  case UV_IDLE:
    FUNC5((uv_idle_t*)handle);
    break;

  case UV_ASYNC:
    FUNC1((uv_async_t*)handle);
    break;

  case UV_TIMER:
    FUNC15((uv_timer_t*)handle);
    break;

  case UV_PROCESS:
    FUNC11((uv_process_t*)handle);
    break;

  case UV_FS_EVENT:
    FUNC3((uv_fs_event_t*)handle);
    break;

  case UV_POLL:
    FUNC9((uv_poll_t*)handle);
    break;

  case UV_FS_POLL:
    FUNC4((uv_fs_poll_t*)handle);
    /* Poll handles use file system requests, and one of them may still be
     * running. The poll code will call uv__make_close_pending() for us. */
    return;

  case UV_SIGNAL:
    FUNC12((uv_signal_t*) handle);
    /* Signal handles may not be closed immediately. The signal code will
     * itself close uv__make_close_pending whenever appropriate. */
    return;

  default:
    FUNC0(0);
  }

  FUNC7(handle);
}