#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  fd; } ;
struct TYPE_6__ {scalar_t__ send_queue_count; int flags; TYPE_1__ io_watcher; } ;
typedef  TYPE_2__ uv_udp_t ;
typedef  int /*<<< orphan*/  uv_buf_t ;
struct sockaddr {int /*<<< orphan*/  sa_family; } ;
struct msghdr {unsigned int msg_namelen; unsigned int msg_iovlen; struct iovec* msg_iov; struct sockaddr* msg_name; } ;
struct iovec {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 scalar_t__ ENOBUFS ; 
 scalar_t__ EWOULDBLOCK ; 
 int UV_EAGAIN ; 
 int UV_HANDLE_UDP_CONNECTED ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (struct msghdr*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct msghdr*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(uv_udp_t* handle,
                     const uv_buf_t bufs[],
                     unsigned int nbufs,
                     const struct sockaddr* addr,
                     unsigned int addrlen) {
  int err;
  struct msghdr h;
  ssize_t size;

  FUNC1(nbufs > 0);

  /* already sending a message */
  if (handle->send_queue_count != 0)
    return UV_EAGAIN;

  if (addr) {
    err = FUNC4(handle, addr->sa_family, 0);
    if (err)
      return err;
  } else {
    FUNC1(handle->flags & UV_HANDLE_UDP_CONNECTED);
  }

  FUNC2(&h, 0, sizeof h);
  h.msg_name = (struct sockaddr*) addr;
  h.msg_namelen = addrlen;
  h.msg_iov = (struct iovec*) bufs;
  h.msg_iovlen = nbufs;

  do {
    size = FUNC3(handle->io_watcher.fd, &h, 0);
  } while (size == -1 && errno == EINTR);

  if (size == -1) {
    if (errno == EAGAIN || errno == EWOULDBLOCK || errno == ENOBUFS)
      return UV_EAGAIN;
    else
      return FUNC0(errno);
  }

  return size;
}