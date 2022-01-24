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
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIGUSR2 ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int active_connections ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  ct_memcache_server ; 
 int /*<<< orphan*/  ct_mysql_server ; 
 scalar_t__ daemonize ; 
 int /*<<< orphan*/  db_proxy_inbound ; 
 int /*<<< orphan*/  db_proxy_memcache_inbound ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 double FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int maxconn ; 
 scalar_t__ memcache_port ; 
 int /*<<< orphan*/  memcache_sfd ; 
 scalar_t__ need_reload_config ; 
 int now ; 
 double precise_now ; 
 scalar_t__ quit_steps ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  sfd ; 
 int /*<<< orphan*/  sighup_handler ; 
 int /*<<< orphan*/  sigint_handler ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigterm_handler ; 
 int /*<<< orphan*/  sigusr1_handler ; 
 int /*<<< orphan*/  sigusr2_handler ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  test_mode ; 
 char* username ; 
 scalar_t__ verbosity ; 

void FUNC15 (void) { 
  //  struct sigaction sa;
  int i;
  int prev_time;
  double next_create_outbound = 0;

  FUNC10();
  FUNC12();

  prev_time = 0;

  if (daemonize) {
    FUNC13();
  }

  if (FUNC0 (username) < 0 && !test_mode) {
    FUNC9 (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    FUNC8(1);
  }

  FUNC11 (sfd, &ct_mysql_server, &db_proxy_inbound);

  if (memcache_port) {
    FUNC11 (memcache_sfd, &ct_memcache_server, &db_proxy_memcache_inbound);
  }

  FUNC2 ();

  FUNC14(SIGINT, sigint_handler);
  FUNC14(SIGTERM, sigterm_handler);
  FUNC14(SIGUSR1, sigusr1_handler);
  FUNC14(SIGUSR2, sigusr2_handler);
  FUNC14(SIGPIPE, SIG_IGN);
  if (daemonize) {
    FUNC14(SIGHUP, sighup_handler);
  }

  for (i = 0; ; i++) {
    if (verbosity > 0 && !(i & 255)) {
      FUNC9 (stderr, "epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\n",
	       active_connections, maxconn, NB_used, NB_alloc, NB_max);
    }
    FUNC7 (50);
    if (precise_now > next_create_outbound) {
      FUNC2 ();
      next_create_outbound = precise_now + 0.03 + 0.02 * FUNC5();
    }
    if (now != prev_time) {
      prev_time = now;
      FUNC3();
    }
    if (need_reload_config) {
      FUNC4 (1);
    }
    if (quit_steps && !--quit_steps) break;
  }

  FUNC6 (sfd);
  FUNC1(sfd);
  
  //  flush_binlog_ts();
}