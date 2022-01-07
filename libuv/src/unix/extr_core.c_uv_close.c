
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uv_udp_t ;
typedef int uv_timer_t ;
typedef int uv_tcp_t ;
typedef int uv_stream_t ;
typedef int uv_signal_t ;
typedef int uv_process_t ;
typedef int uv_prepare_t ;
typedef int uv_poll_t ;
typedef int uv_pipe_t ;
typedef int uv_idle_t ;
struct TYPE_5__ {int type; int close_cb; int flags; } ;
typedef TYPE_1__ uv_handle_t ;
typedef int uv_fs_poll_t ;
typedef int uv_fs_event_t ;
typedef int uv_close_cb ;
typedef int uv_check_t ;
typedef int uv_async_t ;






 int UV_HANDLE_CLOSING ;
 int assert (int) ;
 int uv__async_close (int *) ;
 int uv__check_close (int *) ;
 int uv__fs_event_close (int *) ;
 int uv__fs_poll_close (int *) ;
 int uv__idle_close (int *) ;
 int uv__is_closing (TYPE_1__*) ;
 int uv__make_close_pending (TYPE_1__*) ;
 int uv__pipe_close (int *) ;
 int uv__poll_close (int *) ;
 int uv__prepare_close (int *) ;
 int uv__process_close (int *) ;
 int uv__signal_close (int *) ;
 int uv__stream_close (int *) ;
 int uv__tcp_close (int *) ;
 int uv__timer_close (int *) ;
 int uv__udp_close (int *) ;

void uv_close(uv_handle_t* handle, uv_close_cb close_cb) {
  assert(!uv__is_closing(handle));

  handle->flags |= UV_HANDLE_CLOSING;
  handle->close_cb = close_cb;

  switch (handle->type) {
  case 136:
    uv__pipe_close((uv_pipe_t*)handle);
    break;

  case 129:
    uv__stream_close((uv_stream_t*)handle);
    break;

  case 131:
    uv__tcp_close((uv_tcp_t*)handle);
    break;

  case 128:
    uv__udp_close((uv_udp_t*)handle);
    break;

  case 134:
    uv__prepare_close((uv_prepare_t*)handle);
    break;

  case 140:
    uv__check_close((uv_check_t*)handle);
    break;

  case 137:
    uv__idle_close((uv_idle_t*)handle);
    break;

  case 141:
    uv__async_close((uv_async_t*)handle);
    break;

  case 130:
    uv__timer_close((uv_timer_t*)handle);
    break;

  case 133:
    uv__process_close((uv_process_t*)handle);
    break;

  case 139:
    uv__fs_event_close((uv_fs_event_t*)handle);
    break;

  case 135:
    uv__poll_close((uv_poll_t*)handle);
    break;

  case 138:
    uv__fs_poll_close((uv_fs_poll_t*)handle);


    return;

  case 132:
    uv__signal_close((uv_signal_t*) handle);


    return;

  default:
    assert(0);
  }

  uv__make_close_pending(handle);
}
