
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ type; int flags; int alloc_cb; int io_watcher; int loop; int read_cb; } ;
typedef TYPE_1__ uv_stream_t ;
typedef int uv_read_cb ;
typedef int uv_alloc_cb ;


 int POLLIN ;
 int UV_EINVAL ;
 int UV_ENOTCONN ;
 int UV_HANDLE_CLOSING ;
 int UV_HANDLE_READABLE ;
 int UV_HANDLE_READING ;
 scalar_t__ UV_NAMED_PIPE ;
 scalar_t__ UV_TCP ;
 scalar_t__ UV_TTY ;
 int assert (int) ;
 int uv__handle_start (TYPE_1__*) ;
 int uv__io_start (int ,int *,int ) ;
 scalar_t__ uv__stream_fd (TYPE_1__*) ;
 int uv__stream_osx_interrupt_select (TYPE_1__*) ;

int uv_read_start(uv_stream_t* stream,
                  uv_alloc_cb alloc_cb,
                  uv_read_cb read_cb) {
  assert(stream->type == UV_TCP || stream->type == UV_NAMED_PIPE ||
      stream->type == UV_TTY);

  if (stream->flags & UV_HANDLE_CLOSING)
    return UV_EINVAL;

  if (!(stream->flags & UV_HANDLE_READABLE))
    return UV_ENOTCONN;




  stream->flags |= UV_HANDLE_READING;





  assert(uv__stream_fd(stream) >= 0);
  assert(alloc_cb);

  stream->read_cb = read_cb;
  stream->alloc_cb = alloc_cb;

  uv__io_start(stream->loop, &stream->io_watcher, POLLIN);
  uv__handle_start(stream);
  uv__stream_osx_interrupt_select(stream);

  return 0;
}
