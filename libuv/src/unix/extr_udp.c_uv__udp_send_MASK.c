#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ send_queue_count; int flags; int /*<<< orphan*/  io_watcher; int /*<<< orphan*/  loop; int /*<<< orphan*/  write_queue; int /*<<< orphan*/  send_queue_size; } ;
typedef  TYPE_1__ uv_udp_t ;
struct TYPE_16__ {int /*<<< orphan*/  ss_family; } ;
struct TYPE_15__ {unsigned int nbufs; int /*<<< orphan*/  queue; TYPE_9__* bufs; TYPE_9__* bufsml; TYPE_1__* handle; int /*<<< orphan*/  send_cb; TYPE_9__ addr; } ;
typedef  TYPE_2__ uv_udp_send_t ;
typedef  int /*<<< orphan*/  uv_udp_send_cb ;
struct sockaddr {int /*<<< orphan*/  sa_family; } ;
typedef  struct sockaddr uv_buf_t ;
typedef  int /*<<< orphan*/  bufs ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 unsigned int FUNC0 (TYPE_9__*) ; 
 int /*<<< orphan*/  POLLOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int UV_ENOMEM ; 
 int UV_HANDLE_UDP_PROCESSING ; 
 int /*<<< orphan*/  UV_UDP_SEND ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_9__*,struct sockaddr const*,unsigned int) ; 
 scalar_t__ FUNC5 (TYPE_9__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_9__* FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 

int FUNC13(uv_udp_send_t* req,
                 uv_udp_t* handle,
                 const uv_buf_t bufs[],
                 unsigned int nbufs,
                 const struct sockaddr* addr,
                 unsigned int addrlen,
                 uv_udp_send_cb send_cb) {
  int err;
  int empty_queue;

  FUNC3(nbufs > 0);

  if (addr) {
    err = FUNC11(handle, addr->sa_family, 0);
    if (err)
      return err;
  }

  /* It's legal for send_queue_count > 0 even when the write_queue is empty;
   * it means there are error-state requests in the write_completed_queue that
   * will touch up send_queue_size/count later.
   */
  empty_queue = (handle->send_queue_count == 0);

  FUNC9(handle->loop, req, UV_UDP_SEND);
  FUNC3(addrlen <= sizeof(req->addr));
  if (addr == NULL)
    req->addr.ss_family = AF_UNSPEC;
  else
    FUNC4(&req->addr, addr, addrlen);
  req->send_cb = send_cb;
  req->handle = handle;
  req->nbufs = nbufs;

  req->bufs = req->bufsml;
  if (nbufs > FUNC0(req->bufsml))
    req->bufs = FUNC8(nbufs * sizeof(bufs[0]));

  if (req->bufs == NULL) {
    FUNC10(handle->loop, req);
    return UV_ENOMEM;
  }

  FUNC4(req->bufs, bufs, nbufs * sizeof(bufs[0]));
  handle->send_queue_size += FUNC5(req->bufs, req->nbufs);
  handle->send_queue_count++;
  FUNC2(&handle->write_queue, &req->queue);
  FUNC6(handle);

  if (empty_queue && !(handle->flags & UV_HANDLE_UDP_PROCESSING)) {
    FUNC12(handle);

    /* `uv__udp_sendmsg` may not be able to do non-blocking write straight
     * away. In such cases the `io_watcher` has to be queued for asynchronous
     * write.
     */
    if (!FUNC1(&handle->write_queue))
      FUNC7(handle->loop, &handle->io_watcher, POLLOUT);
  } else {
    FUNC7(handle->loop, &handle->io_watcher, POLLOUT);
  }

  return 0;
}