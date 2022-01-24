#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int fd; } ;
struct TYPE_16__ {int /*<<< orphan*/  (* recv_cb ) (TYPE_2__*,int,TYPE_3__*,struct sockaddr const*,int) ;TYPE_1__ io_watcher; int /*<<< orphan*/  (* alloc_cb ) (int /*<<< orphan*/ *,int,TYPE_3__*) ;} ;
typedef  TYPE_2__ uv_udp_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
struct TYPE_17__ {scalar_t__ len; int /*<<< orphan*/ * base; } ;
typedef  TYPE_3__ uv_buf_t ;
struct sockaddr_storage {int msg_namelen; int msg_iovlen; int msg_flags; void* msg_iov; struct sockaddr_storage* msg_name; } ;
struct sockaddr {int dummy; } ;
struct msghdr {int msg_namelen; int msg_iovlen; int msg_flags; void* msg_iov; struct msghdr* msg_name; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  peer ;
typedef  int /*<<< orphan*/  h ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 scalar_t__ EWOULDBLOCK ; 
 int MSG_TRUNC ; 
 int UV_ENOBUFS ; 
 int UV_UDP_PARTIAL ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,struct sockaddr_storage*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int,TYPE_3__*,struct sockaddr const*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int,TYPE_3__*,struct sockaddr const*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int,TYPE_3__*,struct sockaddr const*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int,TYPE_3__*,struct sockaddr const*,int) ; 
 TYPE_3__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(uv_udp_t* handle) {
  struct sockaddr_storage peer;
  struct msghdr h;
  ssize_t nread;
  uv_buf_t buf;
  int flags;
  int count;

  FUNC1(handle->recv_cb != NULL);
  FUNC1(handle->alloc_cb != NULL);

  /* Prevent loop starvation when the data comes in as fast as (or faster than)
   * we can read it. XXX Need to rearm fd if we switch to edge-triggered I/O.
   */
  count = 32;

  do {
    buf = FUNC9(NULL, 0);
    handle->alloc_cb((uv_handle_t*) handle, 64 * 1024, &buf);
    if (buf.base == NULL || buf.len == 0) {
      handle->recv_cb(handle, UV_ENOBUFS, &buf, NULL, 0);
      return;
    }
    FUNC1(buf.base != NULL);

    FUNC2(&h, 0, sizeof(h));
    FUNC2(&peer, 0, sizeof(peer));
    h.msg_name = &peer;
    h.msg_namelen = sizeof(peer);
    h.msg_iov = (void*) &buf;
    h.msg_iovlen = 1;

    do {
      nread = FUNC3(handle->io_watcher.fd, &h, 0);
    }
    while (nread == -1 && errno == EINTR);

    if (nread == -1) {
      if (errno == EAGAIN || errno == EWOULDBLOCK)
        handle->recv_cb(handle, 0, &buf, NULL, 0);
      else
        handle->recv_cb(handle, FUNC0(errno), &buf, NULL, 0);
    }
    else {
      flags = 0;
      if (h.msg_flags & MSG_TRUNC)
        flags |= UV_UDP_PARTIAL;

      handle->recv_cb(handle, nread, &buf, (const struct sockaddr*) &peer, flags);
    }
  }
  /* recv_cb callback may decide to pause or close the handle */
  while (nread != -1
      && count-- > 0
      && handle->io_watcher.fd != -1
      && handle->recv_cb != NULL);
}