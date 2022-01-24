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

/* Variables and functions */
 int /*<<< orphan*/  NB_alloc ; 
 int /*<<< orphan*/  NB_max ; 
 int /*<<< orphan*/  NB_used ; 
 int /*<<< orphan*/  PASSWORD_LENGTH ; 
 int /*<<< orphan*/  active_connections ; 
 int /*<<< orphan*/  ct_rpc_server ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  maxconn ; 
 int /*<<< orphan*/  password_filename ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  random_engine ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  random_functions ; 
 int /*<<< orphan*/  random_parse_function ; 
 int /*<<< orphan*/  random_stats ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  rpc_methods ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 double tl_aio_timeout ; 
 int /*<<< orphan*/  tl_parse_function ; 
 int /*<<< orphan*/  tl_stat_function ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7 (void) {
  int i;

  tl_parse_function = random_parse_function;
  tl_stat_function = random_stats;
  tl_aio_timeout = 2.0;

  FUNC5 (&random_engine, &random_functions, &ct_rpc_server, &rpc_methods);

  int quit_steps = 0;

  for (i = 0; ; i++) {
    if (!(i & 255)) {
      FUNC6 (1, "epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\n",
	       active_connections, maxconn, NB_used, NB_alloc, NB_max);
    }
    FUNC0 (7);
    FUNC3 (80000 / (1000 / 11));
    if (!FUNC1 ()) {
      break;
    }
    if (quit_steps && !--quit_steps) break;
  }

  FUNC2 (password_filename, PASSWORD_LENGTH);
  FUNC4 (&random_engine);
}