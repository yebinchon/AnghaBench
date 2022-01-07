
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_tty_t ;
typedef int uv_tcp_t ;
struct TYPE_3__ {int flags; int type; } ;
typedef TYPE_1__ uv_stream_t ;
typedef int uv_read_cb ;
typedef int uv_pipe_t ;
typedef int uv_alloc_cb ;


 int ERROR_INVALID_PARAMETER ;
 int UV_EALREADY ;
 int UV_ENOTCONN ;
 int UV_HANDLE_READABLE ;
 int UV_HANDLE_READING ;



 int assert (int ) ;
 int uv_pipe_read_start (int *,int ,int ) ;
 int uv_tcp_read_start (int *,int ,int ) ;
 int uv_translate_sys_error (int) ;
 int uv_tty_read_start (int *,int ,int ) ;

int uv_read_start(uv_stream_t* handle, uv_alloc_cb alloc_cb,
    uv_read_cb read_cb) {
  int err;

  if (handle->flags & UV_HANDLE_READING) {
    return UV_EALREADY;
  }

  if (!(handle->flags & UV_HANDLE_READABLE)) {
    return UV_ENOTCONN;
  }

  err = ERROR_INVALID_PARAMETER;
  switch (handle->type) {
    case 129:
      err = uv_tcp_read_start((uv_tcp_t*)handle, alloc_cb, read_cb);
      break;
    case 130:
      err = uv_pipe_read_start((uv_pipe_t*)handle, alloc_cb, read_cb);
      break;
    case 128:
      err = uv_tty_read_start((uv_tty_t*) handle, alloc_cb, read_cb);
      break;
    default:
      assert(0);
  }

  return uv_translate_sys_error(err);
}
