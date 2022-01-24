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
typedef  scalar_t__ uv_handle_type ;
typedef  int /*<<< orphan*/  uv_handle_t ;
struct sockaddr {int dummy; } ;
struct server_ctx {int /*<<< orphan*/  semaphore; } ;
struct ipc_server_ctx {unsigned int num_connects; int /*<<< orphan*/  server_handle; int /*<<< orphan*/  ipc_pipe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IPC_PIPE_NAME ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 scalar_t__ UV_TCP ; 
 int /*<<< orphan*/  ipc_connection_cb ; 
 int /*<<< orphan*/  listen_addr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(uv_handle_type type,
                                unsigned int num_servers,
                                struct server_ctx* servers) {
  struct ipc_server_ctx ctx;
  uv_loop_t* loop;
  unsigned int i;

  loop = FUNC2();
  ctx.num_connects = num_servers;

  if (type == UV_TCP) {
    FUNC0(0 == FUNC10(loop, (uv_tcp_t*) &ctx.server_handle));
    FUNC0(0 == FUNC9((uv_tcp_t*) &ctx.server_handle,
                            (const struct sockaddr*) &listen_addr,
                            0));
  }
  else
    FUNC0(0);

  FUNC0(0 == FUNC5(loop, &ctx.ipc_pipe, 1));
  FUNC0(0 == FUNC4(&ctx.ipc_pipe, IPC_PIPE_NAME));
  FUNC0(0 == FUNC3((uv_stream_t*) &ctx.ipc_pipe, 128, ipc_connection_cb));

  for (i = 0; i < num_servers; i++)
    FUNC7(&servers[i].semaphore);

  FUNC0(0 == FUNC6(loop, UV_RUN_DEFAULT));
  FUNC1((uv_handle_t*) &ctx.server_handle, NULL);
  FUNC0(0 == FUNC6(loop, UV_RUN_DEFAULT));

  for (i = 0; i < num_servers; i++)
    FUNC8(&servers[i].semaphore);
}