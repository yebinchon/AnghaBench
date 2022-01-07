
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ type; int flags; int io_watcher; int loop; TYPE_2__* shutdown_req; } ;
typedef TYPE_1__ uv_stream_t ;
struct TYPE_10__ {int cb; TYPE_1__* handle; } ;
typedef TYPE_2__ uv_shutdown_t ;
typedef int uv_shutdown_cb ;


 int POLLOUT ;
 int UV_ENOTCONN ;
 int UV_HANDLE_SHUT ;
 int UV_HANDLE_SHUTTING ;
 int UV_HANDLE_WRITABLE ;
 scalar_t__ UV_NAMED_PIPE ;
 int UV_SHUTDOWN ;
 scalar_t__ UV_TCP ;
 scalar_t__ UV_TTY ;
 int assert (int) ;
 int uv__io_start (int ,int *,int ) ;
 scalar_t__ uv__is_closing (TYPE_1__*) ;
 int uv__req_init (int ,TYPE_2__*,int ) ;
 scalar_t__ uv__stream_fd (TYPE_1__*) ;
 int uv__stream_osx_interrupt_select (TYPE_1__*) ;

int uv_shutdown(uv_shutdown_t* req, uv_stream_t* stream, uv_shutdown_cb cb) {
  assert(stream->type == UV_TCP ||
         stream->type == UV_TTY ||
         stream->type == UV_NAMED_PIPE);

  if (!(stream->flags & UV_HANDLE_WRITABLE) ||
      stream->flags & UV_HANDLE_SHUT ||
      stream->flags & UV_HANDLE_SHUTTING ||
      uv__is_closing(stream)) {
    return UV_ENOTCONN;
  }

  assert(uv__stream_fd(stream) >= 0);


  uv__req_init(stream->loop, req, UV_SHUTDOWN);
  req->handle = stream;
  req->cb = cb;
  stream->shutdown_req = req;
  stream->flags |= UV_HANDLE_SHUTTING;

  uv__io_start(stream->loop, &stream->io_watcher, POLLOUT);
  uv__stream_osx_interrupt_select(stream);

  return 0;
}
