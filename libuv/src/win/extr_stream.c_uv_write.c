
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_write_t ;
typedef int uv_write_cb ;
typedef int uv_tty_t ;
typedef int uv_tcp_t ;
struct TYPE_3__ {int flags; int type; int * loop; } ;
typedef TYPE_1__ uv_stream_t ;
typedef int uv_pipe_t ;
typedef int uv_loop_t ;
typedef int uv_buf_t ;


 int ERROR_INVALID_PARAMETER ;
 int UV_EPIPE ;
 int UV_HANDLE_WRITABLE ;



 int assert (int ) ;
 int uv__pipe_write (int *,int *,int *,int const*,unsigned int,int *,int ) ;
 int uv_tcp_write (int *,int *,int *,int const*,unsigned int,int ) ;
 int uv_translate_sys_error (int) ;
 int uv_tty_write (int *,int *,int *,int const*,unsigned int,int ) ;

int uv_write(uv_write_t* req,
             uv_stream_t* handle,
             const uv_buf_t bufs[],
             unsigned int nbufs,
             uv_write_cb cb) {
  uv_loop_t* loop = handle->loop;
  int err;

  if (!(handle->flags & UV_HANDLE_WRITABLE)) {
    return UV_EPIPE;
  }

  err = ERROR_INVALID_PARAMETER;
  switch (handle->type) {
    case 129:
      err = uv_tcp_write(loop, req, (uv_tcp_t*) handle, bufs, nbufs, cb);
      break;
    case 130:
      err = uv__pipe_write(
          loop, req, (uv_pipe_t*) handle, bufs, nbufs, ((void*)0), cb);
      break;
    case 128:
      err = uv_tty_write(loop, req, (uv_tty_t*) handle, bufs, nbufs, cb);
      break;
    default:
      assert(0);
  }

  return uv_translate_sys_error(err);
}
