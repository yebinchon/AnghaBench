
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ type; int delayed_error; int io_watcher; int loop; TYPE_2__* connect_req; } ;
typedef TYPE_1__ uv_tcp_t ;
typedef int uv_stream_t ;
struct TYPE_9__ {int queue; int * handle; int cb; } ;
typedef TYPE_2__ uv_connect_t ;
typedef int uv_connect_cb ;
struct sockaddr {int sa_family; } ;


 scalar_t__ ECONNREFUSED ;
 scalar_t__ EINPROGRESS ;
 scalar_t__ EINTR ;
 scalar_t__ EINVAL ;
 int POLLOUT ;
 int QUEUE_INIT (int *) ;
 int UV_CONNECT ;
 int UV_EALREADY ;
 int UV_HANDLE_READABLE ;
 int UV_HANDLE_WRITABLE ;
 scalar_t__ UV_TCP ;
 int UV__ERR (scalar_t__) ;
 int assert (int) ;
 int connect (int ,struct sockaddr const*,unsigned int) ;
 scalar_t__ errno ;
 int maybe_new_socket (TYPE_1__*,int ,int) ;
 int uv__io_feed (int ,int *) ;
 int uv__io_start (int ,int *,int ) ;
 int uv__req_init (int ,TYPE_2__*,int ) ;
 int uv__stream_fd (TYPE_1__*) ;

int uv__tcp_connect(uv_connect_t* req,
                    uv_tcp_t* handle,
                    const struct sockaddr* addr,
                    unsigned int addrlen,
                    uv_connect_cb cb) {
  int err;
  int r;

  assert(handle->type == UV_TCP);

  if (handle->connect_req != ((void*)0))
    return UV_EALREADY;

  err = maybe_new_socket(handle,
                         addr->sa_family,
                         UV_HANDLE_READABLE | UV_HANDLE_WRITABLE);
  if (err)
    return err;

  handle->delayed_error = 0;

  do {
    errno = 0;
    r = connect(uv__stream_fd(handle), addr, addrlen);
  } while (r == -1 && errno == EINTR);






  if (r == -1 && errno != 0) {
    if (errno == EINPROGRESS)
      ;
    else if (errno == ECONNREFUSED



      )




      handle->delayed_error = UV__ERR(ECONNREFUSED);
    else
      return UV__ERR(errno);
  }

  uv__req_init(handle->loop, req, UV_CONNECT);
  req->cb = cb;
  req->handle = (uv_stream_t*) handle;
  QUEUE_INIT(&req->queue);
  handle->connect_req = req;

  uv__io_start(handle->loop, &handle->io_watcher, POLLOUT);

  if (handle->delayed_error)
    uv__io_feed(handle->loop, &handle->io_watcher);

  return 0;
}
