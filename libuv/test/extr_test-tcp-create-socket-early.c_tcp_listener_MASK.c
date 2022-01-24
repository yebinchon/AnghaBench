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
typedef  int /*<<< orphan*/  uv_tcp_t ;
typedef  int /*<<< orphan*/  uv_stream_t ;
typedef  int /*<<< orphan*/  uv_loop_t ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TEST_PORT ; 
 int /*<<< orphan*/  on_connection ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,struct sockaddr_in*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(uv_loop_t* loop, uv_tcp_t* server) {
  struct sockaddr_in addr;
  int r;

  FUNC0(0 == FUNC1("0.0.0.0", TEST_PORT, &addr));

  r = FUNC4(loop, server);
  FUNC0(r == 0);

  r = FUNC3(server, (const struct sockaddr*) &addr, 0);
  FUNC0(r == 0);

  r = FUNC2((uv_stream_t*) server, 128, on_connection);
  FUNC0(r == 0);
}