
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uv_write_t ;
typedef int uv_write_cb ;
struct TYPE_8__ {scalar_t__ type; int flags; int * loop; } ;
typedef TYPE_1__ uv_stream_t ;
struct TYPE_9__ {int ipc; } ;
typedef TYPE_2__ uv_pipe_t ;
typedef int uv_loop_t ;
typedef int uv_buf_t ;


 int UV_EINVAL ;
 int UV_EPIPE ;
 int UV_HANDLE_WRITABLE ;
 scalar_t__ UV_NAMED_PIPE ;
 int uv__pipe_write (int *,int *,TYPE_2__*,int const*,unsigned int,TYPE_1__*,int ) ;
 int uv_translate_sys_error (int) ;
 int uv_write (int *,TYPE_1__*,int const*,unsigned int,int ) ;

int uv_write2(uv_write_t* req,
              uv_stream_t* handle,
              const uv_buf_t bufs[],
              unsigned int nbufs,
              uv_stream_t* send_handle,
              uv_write_cb cb) {
  uv_loop_t* loop = handle->loop;
  int err;

  if (send_handle == ((void*)0)) {
    return uv_write(req, handle, bufs, nbufs, cb);
  }

  if (handle->type != UV_NAMED_PIPE || !((uv_pipe_t*) handle)->ipc) {
    return UV_EINVAL;
  } else if (!(handle->flags & UV_HANDLE_WRITABLE)) {
    return UV_EPIPE;
  }

  err = uv__pipe_write(
      loop, req, (uv_pipe_t*) handle, bufs, nbufs, send_handle, cb);
  return uv_translate_sys_error(err);
}
