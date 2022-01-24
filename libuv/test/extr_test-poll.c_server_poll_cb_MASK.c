#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ data; } ;
typedef  TYPE_1__ uv_poll_t ;
typedef  scalar_t__ uv_os_sock_t ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
struct TYPE_8__ {scalar_t__ connections; int /*<<< orphan*/  sock; } ;
typedef  TYPE_2__ server_context_t ;
struct TYPE_9__ {int events; int /*<<< orphan*/  poll_handle; } ;
typedef  TYPE_3__ connection_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ INVALID_SOCKET ; 
 scalar_t__ NUM_CLIENTS ; 
 int UV_DISCONNECT ; 
 int UV_READABLE ; 
 int UV_WRITABLE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  connection_poll_cb ; 
 TYPE_3__* FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(uv_poll_t* handle, int status, int events) {
  server_context_t* server_context = (server_context_t*)
                                          handle->data;
  connection_context_t* connection_context;
  struct sockaddr_in addr;
  socklen_t addr_len;
  uv_os_sock_t sock;
  int r;

  addr_len = sizeof addr;
  sock = FUNC1(server_context->sock, (struct sockaddr*) &addr, &addr_len);
#ifdef _WIN32
  ASSERT(sock != INVALID_SOCKET);
#else
  FUNC0(sock >= 0);
#endif

  connection_context = FUNC3(sock, 1);
  connection_context->events = UV_READABLE | UV_WRITABLE | UV_DISCONNECT;
  r = FUNC5(&connection_context->poll_handle,
                    UV_READABLE | UV_WRITABLE | UV_DISCONNECT,
                    connection_poll_cb);
  FUNC0(r == 0);

  if (++server_context->connections == NUM_CLIENTS) {
    FUNC2(server_context->sock);
    FUNC4(server_context);
  }
}