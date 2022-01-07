
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {unsigned int nbufs; int queue; scalar_t__ write_index; int * bufs; int * bufsml; TYPE_2__* send_handle; scalar_t__ error; TYPE_2__* handle; int cb; } ;
typedef TYPE_1__ uv_write_t ;
typedef int uv_write_cb ;
struct TYPE_12__ {scalar_t__ type; int flags; scalar_t__ write_queue_size; int io_watcher; int loop; scalar_t__ connect_req; int write_queue; } ;
typedef TYPE_2__ uv_stream_t ;
struct TYPE_13__ {int ipc; } ;
typedef TYPE_3__ uv_pipe_t ;
typedef int uv_handle_t ;
typedef int uv_buf_t ;
typedef int bufs ;


 unsigned int ARRAY_SIZE (int *) ;
 int POLLOUT ;
 int QUEUE_INIT (int *) ;
 int QUEUE_INSERT_TAIL (int *,int *) ;
 int UV_EBADF ;
 int UV_EINVAL ;
 int UV_ENOMEM ;
 int UV_ENOSYS ;
 int UV_EPIPE ;
 int UV_HANDLE_BLOCKING_WRITES ;
 int UV_HANDLE_WRITABLE ;
 scalar_t__ UV_NAMED_PIPE ;
 scalar_t__ UV_TCP ;
 scalar_t__ UV_TTY ;
 int UV_WRITE ;
 int assert (int) ;
 int memcpy (int *,int const*,unsigned int) ;
 scalar_t__ uv__count_bufs (int const*,unsigned int) ;
 scalar_t__ uv__handle_fd (int *) ;
 int uv__io_start (int ,int *,int ) ;
 int * uv__malloc (unsigned int) ;
 int uv__req_init (int ,TYPE_1__*,int ) ;
 scalar_t__ uv__stream_fd (TYPE_2__*) ;
 int uv__stream_osx_interrupt_select (TYPE_2__*) ;
 int uv__write (TYPE_2__*) ;

int uv_write2(uv_write_t* req,
              uv_stream_t* stream,
              const uv_buf_t bufs[],
              unsigned int nbufs,
              uv_stream_t* send_handle,
              uv_write_cb cb) {
  int empty_queue;

  assert(nbufs > 0);
  assert((stream->type == UV_TCP ||
          stream->type == UV_NAMED_PIPE ||
          stream->type == UV_TTY) &&
         "uv_write (unix) does not yet support other types of streams");

  if (uv__stream_fd(stream) < 0)
    return UV_EBADF;

  if (!(stream->flags & UV_HANDLE_WRITABLE))
    return UV_EPIPE;

  if (send_handle) {
    if (stream->type != UV_NAMED_PIPE || !((uv_pipe_t*)stream)->ipc)
      return UV_EINVAL;







    if (uv__handle_fd((uv_handle_t*) send_handle) < 0)
      return UV_EBADF;






  }







  empty_queue = (stream->write_queue_size == 0);


  uv__req_init(stream->loop, req, UV_WRITE);
  req->cb = cb;
  req->handle = stream;
  req->error = 0;
  req->send_handle = send_handle;
  QUEUE_INIT(&req->queue);

  req->bufs = req->bufsml;
  if (nbufs > ARRAY_SIZE(req->bufsml))
    req->bufs = uv__malloc(nbufs * sizeof(bufs[0]));

  if (req->bufs == ((void*)0))
    return UV_ENOMEM;

  memcpy(req->bufs, bufs, nbufs * sizeof(bufs[0]));
  req->nbufs = nbufs;
  req->write_index = 0;
  stream->write_queue_size += uv__count_bufs(bufs, nbufs);


  QUEUE_INSERT_TAIL(&stream->write_queue, &req->queue);





  if (stream->connect_req) {

  }
  else if (empty_queue) {
    uv__write(stream);
  }
  else {





    assert(!(stream->flags & UV_HANDLE_BLOCKING_WRITES));
    uv__io_start(stream->loop, &stream->io_watcher, POLLOUT);
    uv__stream_osx_interrupt_select(stream);
  }

  return 0;
}
