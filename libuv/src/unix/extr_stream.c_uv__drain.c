
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int flags; int loop; TYPE_2__* shutdown_req; int io_watcher; int write_queue; } ;
typedef TYPE_1__ uv_stream_t ;
struct TYPE_11__ {int (* cb ) (TYPE_2__*,int) ;} ;
typedef TYPE_2__ uv_shutdown_t ;


 int POLLOUT ;
 TYPE_2__* QUEUE_EMPTY (int *) ;
 int SHUT_WR ;
 int UV_HANDLE_CLOSING ;
 int UV_HANDLE_SHUT ;
 int UV_HANDLE_SHUTTING ;
 int UV__ERR (int ) ;
 int assert (TYPE_2__*) ;
 int errno ;
 scalar_t__ shutdown (int ,int ) ;
 int stub1 (TYPE_2__*,int) ;
 int uv__io_stop (int ,int *,int ) ;
 int uv__req_unregister (int ,TYPE_2__*) ;
 int uv__stream_fd (TYPE_1__*) ;
 int uv__stream_osx_interrupt_select (TYPE_1__*) ;

__attribute__((used)) static void uv__drain(uv_stream_t* stream) {
  uv_shutdown_t* req;
  int err;

  assert(QUEUE_EMPTY(&stream->write_queue));
  uv__io_stop(stream->loop, &stream->io_watcher, POLLOUT);
  uv__stream_osx_interrupt_select(stream);


  if ((stream->flags & UV_HANDLE_SHUTTING) &&
      !(stream->flags & UV_HANDLE_CLOSING) &&
      !(stream->flags & UV_HANDLE_SHUT)) {
    assert(stream->shutdown_req);

    req = stream->shutdown_req;
    stream->shutdown_req = ((void*)0);
    stream->flags &= ~UV_HANDLE_SHUTTING;
    uv__req_unregister(stream->loop, req);

    err = 0;
    if (shutdown(uv__stream_fd(stream), SHUT_WR))
      err = UV__ERR(errno);

    if (err == 0)
      stream->flags |= UV_HANDLE_SHUT;

    if (req->cb != ((void*)0))
      req->cb(req, err);
  }
}
