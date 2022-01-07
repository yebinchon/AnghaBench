
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int fd; } ;
struct TYPE_16__ {int (* recv_cb ) (TYPE_2__*,int,TYPE_3__*,struct sockaddr const*,int) ;TYPE_1__ io_watcher; int (* alloc_cb ) (int *,int,TYPE_3__*) ;} ;
typedef TYPE_2__ uv_udp_t ;
typedef int uv_handle_t ;
struct TYPE_17__ {scalar_t__ len; int * base; } ;
typedef TYPE_3__ uv_buf_t ;
struct sockaddr_storage {int msg_namelen; int msg_iovlen; int msg_flags; void* msg_iov; struct sockaddr_storage* msg_name; } ;
struct sockaddr {int dummy; } ;
struct msghdr {int msg_namelen; int msg_iovlen; int msg_flags; void* msg_iov; struct msghdr* msg_name; } ;
typedef int ssize_t ;
typedef int peer ;
typedef int h ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 scalar_t__ EWOULDBLOCK ;
 int MSG_TRUNC ;
 int UV_ENOBUFS ;
 int UV_UDP_PARTIAL ;
 int UV__ERR (scalar_t__) ;
 int assert (int ) ;
 scalar_t__ errno ;
 int memset (struct sockaddr_storage*,int ,int) ;
 int recvmsg (int,struct sockaddr_storage*,int ) ;
 int stub1 (int *,int,TYPE_3__*) ;
 int stub2 (TYPE_2__*,int,TYPE_3__*,struct sockaddr const*,int) ;
 int stub3 (TYPE_2__*,int,TYPE_3__*,struct sockaddr const*,int) ;
 int stub4 (TYPE_2__*,int,TYPE_3__*,struct sockaddr const*,int) ;
 int stub5 (TYPE_2__*,int,TYPE_3__*,struct sockaddr const*,int) ;
 TYPE_3__ uv_buf_init (int *,int ) ;

__attribute__((used)) static void uv__udp_recvmsg(uv_udp_t* handle) {
  struct sockaddr_storage peer;
  struct msghdr h;
  ssize_t nread;
  uv_buf_t buf;
  int flags;
  int count;

  assert(handle->recv_cb != ((void*)0));
  assert(handle->alloc_cb != ((void*)0));




  count = 32;

  do {
    buf = uv_buf_init(((void*)0), 0);
    handle->alloc_cb((uv_handle_t*) handle, 64 * 1024, &buf);
    if (buf.base == ((void*)0) || buf.len == 0) {
      handle->recv_cb(handle, UV_ENOBUFS, &buf, ((void*)0), 0);
      return;
    }
    assert(buf.base != ((void*)0));

    memset(&h, 0, sizeof(h));
    memset(&peer, 0, sizeof(peer));
    h.msg_name = &peer;
    h.msg_namelen = sizeof(peer);
    h.msg_iov = (void*) &buf;
    h.msg_iovlen = 1;

    do {
      nread = recvmsg(handle->io_watcher.fd, &h, 0);
    }
    while (nread == -1 && errno == EINTR);

    if (nread == -1) {
      if (errno == EAGAIN || errno == EWOULDBLOCK)
        handle->recv_cb(handle, 0, &buf, ((void*)0), 0);
      else
        handle->recv_cb(handle, UV__ERR(errno), &buf, ((void*)0), 0);
    }
    else {
      flags = 0;
      if (h.msg_flags & MSG_TRUNC)
        flags |= UV_UDP_PARTIAL;

      handle->recv_cb(handle, nread, &buf, (const struct sockaddr*) &peer, flags);
    }
  }

  while (nread != -1
      && count-- > 0
      && handle->io_watcher.fd != -1
      && handle->recv_cb != ((void*)0));
}
