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
typedef  int /*<<< orphan*/  uv_stream_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  MSG_OOB ; 
 int UV_PRIORITIZED ; 
 int UV_READABLE ; 
 int UV_WRITABLE ; 
 int /*<<< orphan*/  client_fd ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  idle ; 
 int /*<<< orphan*/  idle_cb ; 
 int /*<<< orphan*/  peer_handle ; 
 int /*<<< orphan*/  poll_cb ; 
 int /*<<< orphan*/ * poll_req ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  server_fd ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(uv_stream_t* handle, int status) {
  int r;

  FUNC0(0 == status);
  FUNC0(0 == FUNC2(handle, (uv_stream_t*) &peer_handle));
  FUNC0(0 == FUNC4((uv_handle_t*) &peer_handle, &server_fd));
  FUNC0(0 == FUNC6(FUNC3(), &poll_req[0], client_fd));
  FUNC0(0 == FUNC6(FUNC3(), &poll_req[1], server_fd));
  FUNC0(0 == FUNC7(&poll_req[0],
                            UV_PRIORITIZED | UV_READABLE | UV_WRITABLE,
                            poll_cb));
  FUNC0(0 == FUNC7(&poll_req[1],
                            UV_READABLE,
                            poll_cb));
  do {
    r = FUNC1(server_fd, "hello", 5, MSG_OOB);
  } while (r < 0 && errno == EINTR);
  FUNC0(5 == r);

  do {
    r = FUNC1(server_fd, "world", 5, 0);
  } while (r < 0 && errno == EINTR);
  FUNC0(5 == r);

  FUNC0(0 == FUNC5(&idle, idle_cb));
}