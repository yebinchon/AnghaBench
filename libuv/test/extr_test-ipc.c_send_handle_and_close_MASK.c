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
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TEST_PORT ; 
 int /*<<< orphan*/  channel ; 
 int /*<<< orphan*/  closed_handle_write_cb ; 
 int /*<<< orphan*/  large_buf ; 
 int /*<<< orphan*/  tcp_server ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ,struct sockaddr_in*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_req ; 

__attribute__((used)) static void FUNC7() {
  int r;
  struct sockaddr_in addr;

  r = FUNC5(FUNC2(), &tcp_server);
  FUNC0(r == 0);

  FUNC0(0 == FUNC3("0.0.0.0", TEST_PORT, &addr));

  r = FUNC4(&tcp_server, (const struct sockaddr*) &addr, 0);
  FUNC0(r == 0);

  r = FUNC6(&write_req,
                (uv_stream_t*)&channel,
                &large_buf,
                1,
                (uv_stream_t*)&tcp_server,
                closed_handle_write_cb);
  FUNC0(r == 0);

  FUNC1((uv_handle_t*)&tcp_server, NULL);
}