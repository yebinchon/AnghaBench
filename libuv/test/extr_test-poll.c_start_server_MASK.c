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
struct TYPE_3__ {int /*<<< orphan*/  poll_handle; } ;
typedef  TYPE_1__ server_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TEST_PORT ; 
 int /*<<< orphan*/  UV_READABLE ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_in) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  server_poll_cb ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ,struct sockaddr_in*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void) {
  server_context_t* context;
  struct sockaddr_in addr;
  uv_os_sock_t sock;
  int r;

  FUNC0(0 == FUNC4("127.0.0.1", TEST_PORT, &addr));
  sock = FUNC1(addr);
  context = FUNC2(sock);

  r = FUNC3(sock, 100);
  FUNC0(r == 0);

  r = FUNC5(&context->poll_handle, UV_READABLE, server_poll_cb);
  FUNC0(r == 0);
}