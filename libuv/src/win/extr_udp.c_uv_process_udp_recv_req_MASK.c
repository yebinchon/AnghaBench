#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_37__   TYPE_6__ ;
typedef  struct TYPE_36__   TYPE_5__ ;
typedef  struct TYPE_35__   TYPE_4__ ;
typedef  struct TYPE_34__   TYPE_3__ ;
typedef  struct TYPE_33__   TYPE_2__ ;
typedef  struct TYPE_32__   TYPE_1__ ;

/* Type definitions */
struct TYPE_37__ {scalar_t__ len; int /*<<< orphan*/ * base; } ;
struct TYPE_35__ {scalar_t__ type; int flags; int /*<<< orphan*/  (* recv_cb ) (TYPE_4__*,scalar_t__,TYPE_6__*,struct sockaddr const*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  socket; int /*<<< orphan*/  (* alloc_cb ) (int /*<<< orphan*/ *,int,TYPE_6__*) ;int /*<<< orphan*/  recv_from; TYPE_6__ recv_buffer; } ;
typedef  TYPE_4__ uv_udp_t ;
struct TYPE_32__ {scalar_t__ InternalHigh; } ;
struct TYPE_33__ {TYPE_1__ overlapped; } ;
struct TYPE_34__ {TYPE_2__ io; } ;
struct TYPE_36__ {TYPE_3__ u; } ;
typedef  TYPE_5__ uv_req_t ;
typedef  int /*<<< orphan*/  uv_loop_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
typedef  TYPE_6__ uv_buf_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  WSABUF ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 scalar_t__ FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 scalar_t__ SOCKET_ERROR ; 
 scalar_t__ UV_ENOBUFS ; 
 int UV_HANDLE_READING ; 
 int UV_HANDLE_READ_PENDING ; 
 int UV_HANDLE_ZERO_READ ; 
 scalar_t__ UV_UDP ; 
 int /*<<< orphan*/  UV_UDP_PARTIAL ; 
 scalar_t__ WSAECONNRESET ; 
 scalar_t__ WSAEMSGSIZE ; 
 scalar_t__ WSAENETRESET ; 
 scalar_t__ WSAEWOULDBLOCK ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,scalar_t__*,scalar_t__*,struct sockaddr*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,scalar_t__,TYPE_6__*,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,scalar_t__,TYPE_6__*,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,scalar_t__,TYPE_6__*,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,scalar_t__,TYPE_6__*,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,scalar_t__,TYPE_6__*,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,scalar_t__,TYPE_6__*,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,scalar_t__,TYPE_6__*,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,scalar_t__,TYPE_6__*,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 TYPE_6__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*) ; 

void FUNC20(uv_loop_t* loop, uv_udp_t* handle,
    uv_req_t* req) {
  uv_buf_t buf;
  int partial;

  FUNC5(handle->type == UV_UDP);

  handle->flags &= ~UV_HANDLE_READ_PENDING;

  if (!FUNC2(req)) {
    DWORD err = FUNC1(req);
    if (err == WSAEMSGSIZE) {
      /* Not a real error, it just indicates that the received packet was
       * bigger than the receive buffer. */
    } else if (err == WSAECONNRESET || err == WSAENETRESET) {
      /* A previous sendto operation failed; ignore this error. If zero-reading
       * we need to call WSARecv/WSARecvFrom _without_ the. MSG_PEEK flag to
       * clear out the error queue. For nonzero reads, immediately queue a new
       * receive. */
      if (!(handle->flags & UV_HANDLE_ZERO_READ)) {
        goto done;
      }
    } else {
      /* A real error occurred. Report the error to the user only if we're
       * currently reading. */
      if (handle->flags & UV_HANDLE_READING) {
        FUNC19(handle);
        buf = (handle->flags & UV_HANDLE_ZERO_READ) ?
              FUNC16(NULL, 0) : handle->recv_buffer;
        handle->recv_cb(handle, FUNC17(err), &buf, NULL, 0);
      }
      goto done;
    }
  }

  if (!(handle->flags & UV_HANDLE_ZERO_READ)) {
    /* Successful read */
    partial = !FUNC2(req);
    handle->recv_cb(handle,
                    req->u.io.overlapped.InternalHigh,
                    &handle->recv_buffer,
                    (const struct sockaddr*) &handle->recv_from,
                    partial ? UV_UDP_PARTIAL : 0);
  } else if (handle->flags & UV_HANDLE_READING) {
    DWORD bytes, err, flags;
    struct sockaddr_storage from;
    int from_len;

    /* Do a nonblocking receive.
     * TODO: try to read multiple datagrams at once. FIONREAD maybe? */
    buf = FUNC16(NULL, 0);
    handle->alloc_cb((uv_handle_t*) handle, 65536, &buf);
    if (buf.base == NULL || buf.len == 0) {
      handle->recv_cb(handle, UV_ENOBUFS, &buf, NULL, 0);
      goto done;
    }
    FUNC5(buf.base != NULL);

    FUNC6(&from, 0, sizeof from);
    from_len = sizeof from;

    flags = 0;

    if (FUNC4(handle->socket,
                    (WSABUF*)&buf,
                    1,
                    &bytes,
                    &flags,
                    (struct sockaddr*) &from,
                    &from_len,
                    NULL,
                    NULL) != SOCKET_ERROR) {

      /* Message received */
      handle->recv_cb(handle, bytes, &buf, (const struct sockaddr*) &from, 0);
    } else {
      err = FUNC3();
      if (err == WSAEMSGSIZE) {
        /* Message truncated */
        handle->recv_cb(handle,
                        bytes,
                        &buf,
                        (const struct sockaddr*) &from,
                        UV_UDP_PARTIAL);
      } else if (err == WSAEWOULDBLOCK) {
        /* Kernel buffer empty */
        handle->recv_cb(handle, 0, &buf, NULL, 0);
      } else if (err == WSAECONNRESET || err == WSAENETRESET) {
        /* WSAECONNRESET/WSANETRESET is ignored because this just indicates
         * that a previous sendto operation failed.
         */
        handle->recv_cb(handle, 0, &buf, NULL, 0);
      } else {
        /* Any other error that we want to report back to the user. */
        FUNC19(handle);
        handle->recv_cb(handle, FUNC17(err), &buf, NULL, 0);
      }
    }
  }

done:
  /* Post another read if still reading and not closing. */
  if ((handle->flags & UV_HANDLE_READING) &&
      !(handle->flags & UV_HANDLE_READ_PENDING)) {
    FUNC18(loop, handle);
  }

  FUNC0(handle);
}