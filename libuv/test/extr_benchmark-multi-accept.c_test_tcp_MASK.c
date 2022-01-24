#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* data; } ;
typedef  TYPE_1__ uv_tcp_t ;
typedef  int /*<<< orphan*/  uv_loop_t ;
typedef  int uint64_t ;
struct sockaddr {int dummy; } ;
struct server_ctx {unsigned int num_connects; int /*<<< orphan*/  semaphore; int /*<<< orphan*/  thread_id; int /*<<< orphan*/  async_handle; int /*<<< orphan*/  idle_handle; int /*<<< orphan*/  connect_req; int /*<<< orphan*/  client_handle; } ;
struct client_ctx {unsigned int num_connects; int /*<<< orphan*/  semaphore; int /*<<< orphan*/  thread_id; int /*<<< orphan*/  async_handle; int /*<<< orphan*/  idle_handle; int /*<<< orphan*/  connect_req; int /*<<< orphan*/  client_handle; } ;
typedef  int /*<<< orphan*/  servers ;
typedef  int /*<<< orphan*/  clients ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned int NUM_CONNECTS ; 
 int /*<<< orphan*/  TEST_PORT ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 int /*<<< orphan*/  UV_TCP ; 
 struct server_ctx* FUNC2 (unsigned int,int) ; 
 int /*<<< orphan*/  cl_connect_cb ; 
 int /*<<< orphan*/  FUNC3 (struct server_ctx*) ; 
 int /*<<< orphan*/  listen_addr ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int,double,double,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int,struct server_ctx*) ; 
 int /*<<< orphan*/  server_cb ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,TYPE_1__*,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct server_ctx*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(unsigned int num_servers, unsigned int num_clients) {
  struct server_ctx* servers;
  struct client_ctx* clients;
  uv_loop_t* loop;
  uv_tcp_t* handle;
  unsigned int i;
  double time;

  FUNC0(0 == FUNC10("127.0.0.1", TEST_PORT, &listen_addr));
  loop = FUNC7();

  servers = FUNC2(num_servers, sizeof(servers[0]));
  clients = FUNC2(num_clients, sizeof(clients[0]));
  FUNC0(servers != NULL);
  FUNC0(clients != NULL);

  /* We're making the assumption here that from the perspective of the
   * OS scheduler, threads are functionally equivalent to and interchangeable
   * with full-blown processes.
   */
  for (i = 0; i < num_servers; i++) {
    struct server_ctx* ctx = servers + i;
    FUNC0(0 == FUNC13(&ctx->semaphore, 0));
    FUNC0(0 == FUNC16(&ctx->thread_id, server_cb, ctx));
  }

  FUNC5(UV_TCP, num_servers, servers);

  for (i = 0; i < num_clients; i++) {
    struct client_ctx* ctx = clients + i;
    ctx->num_connects = NUM_CONNECTS / num_clients;
    handle = (uv_tcp_t*) &ctx->client_handle;
    handle->data = "client handle";
    FUNC0(0 == FUNC15(loop, handle));
    FUNC0(0 == FUNC14(&ctx->connect_req,
                               handle,
                               (const struct sockaddr*) &listen_addr,
                               cl_connect_cb));
    FUNC0(0 == FUNC9(loop, &ctx->idle_handle));
  }

  {
    uint64_t t = FUNC8();
    FUNC0(0 == FUNC11(loop, UV_RUN_DEFAULT));
    t = FUNC8() - t;
    time = t / 1e9;
  }

  for (i = 0; i < num_servers; i++) {
    struct server_ctx* ctx = servers + i;
    FUNC6(&ctx->async_handle);
    FUNC0(0 == FUNC17(&ctx->thread_id));
    FUNC12(&ctx->semaphore);
  }

  FUNC4("accept%u: %.0f accepts/sec (%u total)\n",
         num_servers,
         NUM_CONNECTS / time,
         NUM_CONNECTS);

  for (i = 0; i < num_servers; i++) {
    struct server_ctx* ctx = servers + i;
    FUNC4("  thread #%u: %.0f accepts/sec (%u total, %.1f%%)\n",
           i,
           ctx->num_connects / time,
           ctx->num_connects,
           ctx->num_connects * 100.0 / NUM_CONNECTS);
  }

  FUNC3(clients);
  FUNC3(servers);

  FUNC1();
  return 0;
}