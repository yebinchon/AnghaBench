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
 int NB_alloc ; 
 int NB_max ; 
 int NB_used ; 
 int active_connections ; 
 scalar_t__ binlog_disabled ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  ct_rpc_server ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int maxconn ; 
 int /*<<< orphan*/  news_engine ; 
 int /*<<< orphan*/  news_functions ; 
 int /*<<< orphan*/  news_parse_function ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  rpc_methods ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 double tl_aio_timeout ; 
 int /*<<< orphan*/  tl_parse_function ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ verbosity ; 

void FUNC12 (void) {
  tl_parse_function = news_parse_function;
  tl_aio_timeout = 2.0;
  FUNC10 (&news_engine, &news_functions, &ct_rpc_server, &rpc_methods);
  int quit_steps = 0, epoll_work_timeout = 17, i;
  for (i = 0; ; i++) {
    if (verbosity > 0 && !(i & 1023)) {
      FUNC5 (stderr, "epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\n",
	       active_connections, maxconn, NB_used, NB_alloc, NB_max);
    }
    FUNC3 (binlog_disabled ? FUNC6() : FUNC7 ());
    FUNC2 (epoll_work_timeout);
    
    if (!FUNC8 ()) {
      break;
    }

    FUNC0 ();
    FUNC11 ();
    
    FUNC4 ();
    FUNC1 (binlog_disabled ? FUNC6() : FUNC7 (), binlog_disabled);

    /*if (getloadavg (&loadavg_last_minute, 1) == 1 && loadavg_last_minute < 1.0) {
      vkprintf (4, "Collect garbage\n");
      last_collect_garbage_time = now;
      news_collect_garbage (100);
      epoll_work_timeout = 10;
    } else {
      epoll_work_timeout = 97;
      }*/

    if (quit_steps && !--quit_steps) break;
  }

  FUNC9 (&news_engine);
}