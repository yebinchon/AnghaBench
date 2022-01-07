
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uv_udp_t ;
typedef int uv_tty_t ;
typedef int uv_timer_t ;
typedef int uv_tcp_t ;
typedef int uv_signal_t ;
typedef int uv_process_t ;
typedef int uv_prepare_t ;
typedef int uv_poll_t ;
typedef int uv_pipe_t ;
typedef int uv_loop_t ;
typedef int uv_idle_t ;
struct TYPE_5__ {int flags; int type; int close_cb; int * loop; } ;
typedef TYPE_1__ uv_handle_t ;
typedef int uv_fs_poll_t ;
typedef int uv_fs_event_t ;
typedef int uv_close_cb ;
typedef int uv_check_t ;
typedef int uv_async_t ;






 int UV_HANDLE_CLOSING ;
 int abort () ;
 int assert (int ) ;
 int uv__fs_poll_close (int *) ;
 int uv__handle_closing (TYPE_1__*) ;
 int uv_async_close (int *,int *) ;
 int uv_check_stop (int *) ;
 int uv_fs_event_close (int *,int *) ;
 int uv_idle_stop (int *) ;
 int uv_pipe_close (int *,int *) ;
 int uv_poll_close (int *,int *) ;
 int uv_prepare_stop (int *) ;
 int uv_process_close (int *,int *) ;
 int uv_signal_close (int *,int *) ;
 int uv_tcp_close (int *,int *) ;
 int uv_timer_stop (int *) ;
 int uv_tty_close (int *) ;
 int uv_udp_close (int *,int *) ;
 int uv_want_endgame (int *,TYPE_1__*) ;

void uv_close(uv_handle_t* handle, uv_close_cb cb) {
  uv_loop_t* loop = handle->loop;

  if (handle->flags & UV_HANDLE_CLOSING) {
    assert(0);
    return;
  }

  handle->close_cb = cb;


  switch (handle->type) {
    case 131:
      uv_tcp_close(loop, (uv_tcp_t*)handle);
      return;

    case 136:
      uv_pipe_close(loop, (uv_pipe_t*) handle);
      return;

    case 129:
      uv_tty_close((uv_tty_t*) handle);
      return;

    case 128:
      uv_udp_close(loop, (uv_udp_t*) handle);
      return;

    case 135:
      uv_poll_close(loop, (uv_poll_t*) handle);
      return;

    case 130:
      uv_timer_stop((uv_timer_t*)handle);
      uv__handle_closing(handle);
      uv_want_endgame(loop, handle);
      return;

    case 134:
      uv_prepare_stop((uv_prepare_t*)handle);
      uv__handle_closing(handle);
      uv_want_endgame(loop, handle);
      return;

    case 140:
      uv_check_stop((uv_check_t*)handle);
      uv__handle_closing(handle);
      uv_want_endgame(loop, handle);
      return;

    case 137:
      uv_idle_stop((uv_idle_t*)handle);
      uv__handle_closing(handle);
      uv_want_endgame(loop, handle);
      return;

    case 141:
      uv_async_close(loop, (uv_async_t*) handle);
      return;

    case 132:
      uv_signal_close(loop, (uv_signal_t*) handle);
      return;

    case 133:
      uv_process_close(loop, (uv_process_t*) handle);
      return;

    case 139:
      uv_fs_event_close(loop, (uv_fs_event_t*) handle);
      return;

    case 138:
      uv__fs_poll_close((uv_fs_poll_t*) handle);
      uv__handle_closing(handle);
      return;

    default:

      abort();
  }
}
