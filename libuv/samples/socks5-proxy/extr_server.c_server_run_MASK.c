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
typedef  int /*<<< orphan*/  uv_loop_t ;
struct TYPE_3__ {int /*<<< orphan*/  bind_host; } ;
struct addrinfo {int /*<<< orphan*/ * servers; int /*<<< orphan*/  getaddrinfo_req; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; int /*<<< orphan*/ * loop; TYPE_1__ config; } ;
typedef  int /*<<< orphan*/  state ;
typedef  struct addrinfo server_state ;
typedef  TYPE_1__ server_config ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  do_bind ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

int FUNC8(const server_config *cf, uv_loop_t *loop) {
  struct addrinfo hints;
  server_state state;
  int err;

  FUNC2(&state, 0, sizeof(state));
  state.servers = NULL;
  state.config = *cf;
  state.loop = loop;

  /* Resolve the address of the interface that we should bind to.
   * The getaddrinfo callback starts the server and everything else.
   */
  FUNC2(&hints, 0, sizeof(hints));
  hints.ai_family = AF_UNSPEC;
  hints.ai_socktype = SOCK_STREAM;
  hints.ai_protocol = IPPROTO_TCP;

  err = FUNC4(loop,
                       &state.getaddrinfo_req,
                       do_bind,
                       cf->bind_host,
                       NULL,
                       &hints);
  if (err != 0) {
    FUNC3("getaddrinfo: %s", FUNC7(err));
    return err;
  }

  /* Start the event loop.  Control continues in do_bind(). */
  if (FUNC6(loop, UV_RUN_DEFAULT)) {
    FUNC0();
  }

  /* Please Valgrind. */
  FUNC5(loop);
  FUNC1(state.servers);
  return 0;
}