
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uv_tty_t ;
struct TYPE_4__ {int flags; scalar_t__ type; int loop; } ;
typedef TYPE_1__ uv_stream_t ;
typedef int uv_pipe_t ;


 int DECREASE_ACTIVE_COUNT (int ,TYPE_1__*) ;
 int UV_HANDLE_READING ;
 scalar_t__ UV_NAMED_PIPE ;
 scalar_t__ UV_TTY ;
 int uv__pipe_read_stop (int *) ;
 int uv_translate_sys_error (int) ;
 int uv_tty_read_stop (int *) ;

int uv_read_stop(uv_stream_t* handle) {
  int err;

  if (!(handle->flags & UV_HANDLE_READING))
    return 0;

  err = 0;
  if (handle->type == UV_TTY) {
    err = uv_tty_read_stop((uv_tty_t*) handle);
  } else if (handle->type == UV_NAMED_PIPE) {
    uv__pipe_read_stop((uv_pipe_t*) handle);
  } else {
    handle->flags &= ~UV_HANDLE_READING;
    DECREASE_ACTIVE_COUNT(handle->loop, handle);
  }

  return uv_translate_sys_error(err);
}
