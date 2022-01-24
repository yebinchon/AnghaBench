#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ socket; int flags; } ;
typedef  TYPE_1__ uv_tcp_t ;
struct TYPE_8__ {int /*<<< orphan*/  iocp; } ;
typedef  TYPE_2__ uv_loop_t ;
typedef  int /*<<< orphan*/  ULONG_PTR ;
typedef  int UCHAR ;
typedef  scalar_t__ SOCKET ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int AF_INET6 ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FILE_SKIP_COMPLETION_PORT_ON_SUCCESS ; 
 int FILE_SKIP_SET_EVENT_ON_HANDLE ; 
 int /*<<< orphan*/  FIONBIO ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  HANDLE_FLAG_INHERIT ; 
 scalar_t__ INVALID_SOCKET ; 
 scalar_t__ SOCKET_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int UV_EBUSY ; 
 int UV_HANDLE_EMULATE_IOCP ; 
 int UV_HANDLE_IPV6 ; 
 int UV_HANDLE_SYNC_BYPASS_IOCP ; 
 int UV_HANDLE_TCP_KEEPALIVE ; 
 int UV_HANDLE_TCP_NODELAY ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ,int*) ; 
 int FUNC7 (TYPE_1__*,scalar_t__,int,int) ; 
 int FUNC8 (TYPE_1__*,scalar_t__,int) ; 
 int uv_tcp_non_ifs_lsp_ipv4 ; 
 int uv_tcp_non_ifs_lsp_ipv6 ; 

__attribute__((used)) static int FUNC9(uv_loop_t* loop,
                             uv_tcp_t* handle,
                             SOCKET socket,
                             int family,
                             int imported) {
  DWORD yes = 1;
  int non_ifs_lsp;
  int err;

  if (handle->socket != INVALID_SOCKET)
    return UV_EBUSY;

  /* Set the socket to nonblocking mode */
  if (FUNC6(socket, FIONBIO, &yes) == SOCKET_ERROR) {
    return FUNC4();
  }

  /* Make the socket non-inheritable */
  if (!FUNC3((HANDLE) socket, HANDLE_FLAG_INHERIT, 0))
    return FUNC1();

  /* Associate it with the I/O completion port. Use uv_handle_t pointer as
   * completion key. */
  if (FUNC0((HANDLE)socket,
                             loop->iocp,
                             (ULONG_PTR)socket,
                             0) == NULL) {
    if (imported) {
      handle->flags |= UV_HANDLE_EMULATE_IOCP;
    } else {
      return FUNC1();
    }
  }

  if (family == AF_INET6) {
    non_ifs_lsp = uv_tcp_non_ifs_lsp_ipv6;
  } else {
    non_ifs_lsp = uv_tcp_non_ifs_lsp_ipv4;
  }

  if (!(handle->flags & UV_HANDLE_EMULATE_IOCP) && !non_ifs_lsp) {
    UCHAR sfcnm_flags =
        FILE_SKIP_SET_EVENT_ON_HANDLE | FILE_SKIP_COMPLETION_PORT_ON_SUCCESS;
    if (!FUNC2((HANDLE) socket, sfcnm_flags))
      return FUNC1();
    handle->flags |= UV_HANDLE_SYNC_BYPASS_IOCP;
  }

  if (handle->flags & UV_HANDLE_TCP_NODELAY) {
    err = FUNC8(handle, socket, 1);
    if (err)
      return err;
  }

  /* TODO: Use stored delay. */
  if (handle->flags & UV_HANDLE_TCP_KEEPALIVE) {
    err = FUNC7(handle, socket, 1, 60);
    if (err)
      return err;
  }

  handle->socket = socket;

  if (family == AF_INET6) {
    handle->flags |= UV_HANDLE_IPV6;
  } else {
    FUNC5(!(handle->flags & UV_HANDLE_IPV6));
  }

  return 0;
}