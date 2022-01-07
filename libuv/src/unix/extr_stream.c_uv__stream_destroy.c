
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int flags; scalar_t__ write_queue_size; TYPE_5__* shutdown_req; int loop; TYPE_5__* connect_req; int io_watcher; } ;
typedef TYPE_1__ uv_stream_t ;
struct TYPE_9__ {int (* cb ) (TYPE_5__*,int ) ;} ;


 int POLLIN ;
 int POLLOUT ;
 int UV_ECANCELED ;
 int UV_HANDLE_CLOSED ;
 int assert (int) ;
 int stub1 (TYPE_5__*,int ) ;
 int stub2 (TYPE_5__*,int ) ;
 int uv__io_active (int *,int) ;
 int uv__req_unregister (int ,TYPE_5__*) ;
 int uv__stream_flush_write_queue (TYPE_1__*,int ) ;
 int uv__write_callbacks (TYPE_1__*) ;

void uv__stream_destroy(uv_stream_t* stream) {
  assert(!uv__io_active(&stream->io_watcher, POLLIN | POLLOUT));
  assert(stream->flags & UV_HANDLE_CLOSED);

  if (stream->connect_req) {
    uv__req_unregister(stream->loop, stream->connect_req);
    stream->connect_req->cb(stream->connect_req, UV_ECANCELED);
    stream->connect_req = ((void*)0);
  }

  uv__stream_flush_write_queue(stream, UV_ECANCELED);
  uv__write_callbacks(stream);

  if (stream->shutdown_req) {





    uv__req_unregister(stream->loop, stream->shutdown_req);
    stream->shutdown_req->cb(stream->shutdown_req, UV_ECANCELED);
    stream->shutdown_req = ((void*)0);
  }

  assert(stream->write_queue_size == 0);
}
