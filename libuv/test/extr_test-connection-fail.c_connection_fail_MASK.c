#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uv_connect_cb ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TEST_PORT ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 int close_cb_calls ; 
 int connect_cb_calls ; 
 int /*<<< orphan*/  req ; 
 int /*<<< orphan*/  tcp ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ,struct sockaddr_in*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(uv_connect_cb connect_cb) {
  struct sockaddr_in client_addr, server_addr;
  int r;

  FUNC0(0 == FUNC2("0.0.0.0", 0, &client_addr));

  /* There should be no servers listening on this port. */
  FUNC0(0 == FUNC2("127.0.0.1", TEST_PORT, &server_addr));

  /* Try to connect to the server and do NUM_PINGS ping-pongs. */
  r = FUNC6(FUNC1(), &tcp);
  FUNC0(!r);

  /* We are never doing multiple reads/connects at a time anyway. so these
   * handles can be pre-initialized. */
  FUNC0(0 == FUNC4(&tcp, (const struct sockaddr*) &client_addr, 0));

  r = FUNC5(&req,
                     &tcp,
                     (const struct sockaddr*) &server_addr,
                     connect_cb);
  FUNC0(!r);

  FUNC3(FUNC1(), UV_RUN_DEFAULT);

  FUNC0(connect_cb_calls == 1);
  FUNC0(close_cb_calls == 1);
}