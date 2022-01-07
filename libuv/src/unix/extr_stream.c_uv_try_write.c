
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ error; int * bufs; int * bufsml; int queue; } ;
typedef TYPE_1__ uv_write_t ;
struct TYPE_10__ {scalar_t__ write_queue_size; int io_watcher; int loop; int * connect_req; } ;
typedef TYPE_2__ uv_stream_t ;
typedef int uv_buf_t ;


 int POLLOUT ;
 int QUEUE_REMOVE (int *) ;
 int UV_EAGAIN ;
 size_t uv__count_bufs (int const*,unsigned int) ;
 int uv__free (int *) ;
 int uv__io_active (int *,int ) ;
 int uv__io_stop (int ,int *,int ) ;
 int uv__req_unregister (int ,TYPE_1__*) ;
 int uv__stream_osx_interrupt_select (TYPE_2__*) ;
 size_t uv__write_req_size (TYPE_1__*) ;
 int uv_try_write_cb ;
 int uv_write (TYPE_1__*,TYPE_2__*,int const*,unsigned int,int ) ;

int uv_try_write(uv_stream_t* stream,
                 const uv_buf_t bufs[],
                 unsigned int nbufs) {
  int r;
  int has_pollout;
  size_t written;
  size_t req_size;
  uv_write_t req;


  if (stream->connect_req != ((void*)0) || stream->write_queue_size != 0)
    return UV_EAGAIN;

  has_pollout = uv__io_active(&stream->io_watcher, POLLOUT);

  r = uv_write(&req, stream, bufs, nbufs, uv_try_write_cb);
  if (r != 0)
    return r;


  written = uv__count_bufs(bufs, nbufs);
  if (req.bufs != ((void*)0))
    req_size = uv__write_req_size(&req);
  else
    req_size = 0;
  written -= req_size;
  stream->write_queue_size -= req_size;


  QUEUE_REMOVE(&req.queue);
  uv__req_unregister(stream->loop, &req);
  if (req.bufs != req.bufsml)
    uv__free(req.bufs);
  req.bufs = ((void*)0);


  if (!has_pollout) {
    uv__io_stop(stream->loop, &stream->io_watcher, POLLOUT);
    uv__stream_osx_interrupt_select(stream);
  }

  if (written == 0 && req_size != 0)
    return req.error < 0 ? req.error : UV_EAGAIN;
  else
    return written;
}
