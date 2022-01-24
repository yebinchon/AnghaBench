#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uv_os_sock_t ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_3__ {int events; int /*<<< orphan*/  poll_handle; } ;
typedef  TYPE_1__ connection_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TEST_PORT ; 
 int UV_DISCONNECT ; 
 int UV_READABLE ; 
 int UV_WRITABLE ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int /*<<< orphan*/  connection_poll_cb ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_in) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ,struct sockaddr_in*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void) {
  uv_os_sock_t sock;
  connection_context_t* context;
  struct sockaddr_in server_addr;
  struct sockaddr_in addr;
  int r;

  FUNC0(0 == FUNC5("127.0.0.1", TEST_PORT, &server_addr));
  FUNC0(0 == FUNC5("0.0.0.0", 0, &addr));

  sock = FUNC2(addr);
  context = FUNC3(sock, 0);

  context->events = UV_READABLE | UV_WRITABLE | UV_DISCONNECT;
  r = FUNC6(&context->poll_handle,
                    UV_READABLE | UV_WRITABLE | UV_DISCONNECT,
                    connection_poll_cb);
  FUNC0(r == 0);

  r = FUNC1(sock, (struct sockaddr*) &server_addr, sizeof server_addr);
  FUNC0(r == 0 || FUNC4());
}