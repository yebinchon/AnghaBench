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
typedef  int /*<<< orphan*/  uv_pipe_t ;
typedef  int /*<<< orphan*/  uv_connect_t ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ MAX_SIMULTANEOUS_CONNECTS ; 
 scalar_t__ TARGET_CONNECTIONS ; 
 scalar_t__ TCP ; 
 int /*<<< orphan*/  TEST_PIPENAME ; 
 int /*<<< orphan*/  connect_addr ; 
 int /*<<< orphan*/  connect_cb ; 
 int /*<<< orphan*/  loop ; 
 scalar_t__ max_connect_socket ; 
 int /*<<< orphan*/ * pipe_write_handles ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/ * tcp_write_handles ; 
 scalar_t__ type ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ write_sockets ; 

__attribute__((used)) static void FUNC6(void) {
  uv_connect_t* req;
  uv_tcp_t* tcp;
  uv_pipe_t* pipe;
  int r;

  while (max_connect_socket < TARGET_CONNECTIONS &&
         max_connect_socket < write_sockets + MAX_SIMULTANEOUS_CONNECTS) {
    if (type == TCP) {
      tcp = &tcp_write_handles[max_connect_socket++];

      r = FUNC5(loop, tcp);
      FUNC0(r == 0);

      req = (uv_connect_t*) FUNC1();
      r = FUNC4(req,
                         tcp,
                         (const struct sockaddr*) &connect_addr,
                         connect_cb);
      FUNC0(r == 0);
    } else {
      pipe = &pipe_write_handles[max_connect_socket++];

      r = FUNC3(loop, pipe, 0);
      FUNC0(r == 0);

      req = (uv_connect_t*) FUNC1();
      FUNC2(req, pipe, TEST_PIPENAME, connect_cb);
    }
  }
}