
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ send_queue_count; int flags; int io_watcher; int loop; int write_queue; int send_queue_size; } ;
typedef TYPE_1__ uv_udp_t ;
struct TYPE_16__ {int ss_family; } ;
struct TYPE_15__ {unsigned int nbufs; int queue; TYPE_9__* bufs; TYPE_9__* bufsml; TYPE_1__* handle; int send_cb; TYPE_9__ addr; } ;
typedef TYPE_2__ uv_udp_send_t ;
typedef int uv_udp_send_cb ;
struct sockaddr {int sa_family; } ;
typedef struct sockaddr uv_buf_t ;
typedef int bufs ;


 int AF_UNSPEC ;
 unsigned int ARRAY_SIZE (TYPE_9__*) ;
 int POLLOUT ;
 int QUEUE_EMPTY (int *) ;
 int QUEUE_INSERT_TAIL (int *,int *) ;
 int UV_ENOMEM ;
 int UV_HANDLE_UDP_PROCESSING ;
 int UV_UDP_SEND ;
 int assert (int) ;
 int memcpy (TYPE_9__*,struct sockaddr const*,unsigned int) ;
 scalar_t__ uv__count_bufs (TYPE_9__*,unsigned int) ;
 int uv__handle_start (TYPE_1__*) ;
 int uv__io_start (int ,int *,int ) ;
 TYPE_9__* uv__malloc (unsigned int) ;
 int uv__req_init (int ,TYPE_2__*,int ) ;
 int uv__req_unregister (int ,TYPE_2__*) ;
 int uv__udp_maybe_deferred_bind (TYPE_1__*,int ,int ) ;
 int uv__udp_sendmsg (TYPE_1__*) ;

int uv__udp_send(uv_udp_send_t* req,
                 uv_udp_t* handle,
                 const uv_buf_t bufs[],
                 unsigned int nbufs,
                 const struct sockaddr* addr,
                 unsigned int addrlen,
                 uv_udp_send_cb send_cb) {
  int err;
  int empty_queue;

  assert(nbufs > 0);

  if (addr) {
    err = uv__udp_maybe_deferred_bind(handle, addr->sa_family, 0);
    if (err)
      return err;
  }





  empty_queue = (handle->send_queue_count == 0);

  uv__req_init(handle->loop, req, UV_UDP_SEND);
  assert(addrlen <= sizeof(req->addr));
  if (addr == ((void*)0))
    req->addr.ss_family = AF_UNSPEC;
  else
    memcpy(&req->addr, addr, addrlen);
  req->send_cb = send_cb;
  req->handle = handle;
  req->nbufs = nbufs;

  req->bufs = req->bufsml;
  if (nbufs > ARRAY_SIZE(req->bufsml))
    req->bufs = uv__malloc(nbufs * sizeof(bufs[0]));

  if (req->bufs == ((void*)0)) {
    uv__req_unregister(handle->loop, req);
    return UV_ENOMEM;
  }

  memcpy(req->bufs, bufs, nbufs * sizeof(bufs[0]));
  handle->send_queue_size += uv__count_bufs(req->bufs, req->nbufs);
  handle->send_queue_count++;
  QUEUE_INSERT_TAIL(&handle->write_queue, &req->queue);
  uv__handle_start(handle);

  if (empty_queue && !(handle->flags & UV_HANDLE_UDP_PROCESSING)) {
    uv__udp_sendmsg(handle);





    if (!QUEUE_EMPTY(&handle->write_queue))
      uv__io_start(handle->loop, &handle->io_watcher, POLLOUT);
  } else {
    uv__io_start(handle->loop, &handle->io_watcher, POLLOUT);
  }

  return 0;
}
