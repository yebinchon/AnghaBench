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
typedef  int /*<<< orphan*/  uv_udp_recv_cb ;
typedef  int /*<<< orphan*/  uv_buf_t ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  TEST_PORT ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 int /*<<< orphan*/  alloc_cb ; 
 int /*<<< orphan*/  client ; 
 int close_cb_called ; 
 scalar_t__ recv_cb_called ; 
 int /*<<< orphan*/  req_ ; 
 int /*<<< orphan*/  send_cb ; 
 scalar_t__ send_cb_called ; 
 int /*<<< orphan*/  server ; 
 int /*<<< orphan*/  timeout ; 
 int /*<<< orphan*/  timeout_cb ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ,struct sockaddr_in*) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ,struct sockaddr_in6*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct sockaddr const*,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,struct sockaddr const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(uv_udp_recv_cb recv_cb, int bind_flags) {
  struct sockaddr_in6 addr6;
  struct sockaddr_in addr;
  uv_buf_t buf;
  int r;

  FUNC0(0 == FUNC5("::0", TEST_PORT, &addr6));

  r = FUNC10(FUNC3(), &server);
  FUNC0(r == 0);

  r = FUNC9(&server, (const struct sockaddr*) &addr6, bind_flags);
  FUNC0(r == 0);

  r = FUNC11(&server, alloc_cb, recv_cb);
  FUNC0(r == 0);

  r = FUNC10(FUNC3(), &client);
  FUNC0(r == 0);

  buf = FUNC2("PING", 4);
  FUNC0(0 == FUNC4("127.0.0.1", TEST_PORT, &addr));

  r = FUNC12(&req_,
                  &client,
                  &buf,
                  1,
                  (const struct sockaddr*) &addr,
                  send_cb);
  FUNC0(r == 0);

  r = FUNC7(FUNC3(), &timeout);
  FUNC0(r == 0);

  r = FUNC8(&timeout, timeout_cb, 500, 0);
  FUNC0(r == 0);

  FUNC0(close_cb_called == 0);
  FUNC0(send_cb_called == 0);
  FUNC0(recv_cb_called == 0);

  FUNC6(FUNC3(), UV_RUN_DEFAULT);

  FUNC0(close_cb_called == 3);

  FUNC1();
}