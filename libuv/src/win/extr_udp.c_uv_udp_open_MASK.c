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
struct TYPE_7__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  loop; } ;
typedef  TYPE_1__ uv_udp_t ;
typedef  int /*<<< orphan*/  uv_os_sock_t ;
struct TYPE_8__ {int /*<<< orphan*/  iAddressFamily; } ;
typedef  TYPE_2__ WSAPROTOCOL_INFOW ;

/* Variables and functions */
 int FUNC0 () ; 
 scalar_t__ SOCKET_ERROR ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_PROTOCOL_INFOW ; 
 int /*<<< orphan*/  UV_HANDLE_BOUND ; 
 int /*<<< orphan*/  UV_HANDLE_UDP_CONNECTED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(uv_udp_t* handle, uv_os_sock_t sock) {
  WSAPROTOCOL_INFOW protocol_info;
  int opt_len;
  int err;

  /* Detect the address family of the socket. */
  opt_len = (int) sizeof protocol_info;
  if (FUNC1(sock,
                 SOL_SOCKET,
                 SO_PROTOCOL_INFOW,
                 (char*) &protocol_info,
                 &opt_len) == SOCKET_ERROR) {
    return FUNC4(FUNC0());
  }

  err = FUNC5(handle->loop,
                          handle,
                          sock,
                          protocol_info.iAddressFamily);
  if (err)
    return FUNC4(err);

  if (FUNC2(handle))
    handle->flags |= UV_HANDLE_BOUND;

  if (FUNC3(handle))
    handle->flags |= UV_HANDLE_UDP_CONNECTED;

  return 0;
}