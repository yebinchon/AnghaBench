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
 int /*<<< orphan*/  active_connections ; 
 int /*<<< orphan*/  ct_rpc_server ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  maxconn ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  rpc_methods ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 double tl_aio_timeout ; 
 int /*<<< orphan*/  tl_parse_function ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  tl_stat_function ; 
 int verbosity ; 
 int /*<<< orphan*/  weights_engine ; 
 int /*<<< orphan*/  weights_functions ; 
 int /*<<< orphan*/  weights_parse_function ; 
 int /*<<< orphan*/  weights_stats ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7 (void) {
  int i;

  tl_parse_function = weights_parse_function;
  tl_stat_function = weights_stats;
  tl_aio_timeout = 2.0;

  FUNC4 (&weights_engine, &weights_functions, &ct_rpc_server, &rpc_methods);

  int quit_steps = 0;

  for (i = 0; ; i++) {
    if (verbosity > 1 && !(i & 255)) {
      FUNC1 ("epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\n",
	       active_connections, maxconn, NB_used, NB_alloc, NB_max);
    }

    FUNC0 (37);
    if (!FUNC2 ()) {
      break;
    }
    FUNC5 ();

    FUNC6 ();

    if (quit_steps && !--quit_steps) break;
  }

  FUNC3 (&weights_engine);
}