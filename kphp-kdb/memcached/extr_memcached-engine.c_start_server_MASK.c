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
 int /*<<< orphan*/  SIGRTMAX ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int active_connections ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  ct_rpc_server ; 
 scalar_t__ daemonize ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  interactive ; 
 int maxconn ; 
 int /*<<< orphan*/  memcache_rpc_server ; 
 int now ; 
 scalar_t__ quit_steps ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  sfd ; 
 int /*<<< orphan*/  sighup_handler ; 
 int /*<<< orphan*/  sigint_handler ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigrtmax_handler ; 
 int /*<<< orphan*/  sigterm_handler ; 
 int /*<<< orphan*/  sigusr1_handler ; 
 int /*<<< orphan*/  stderr ; 
 char* username ; 
 scalar_t__ verbosity ; 

void FUNC13 (void) {
  int i;
  int prev_time;

  FUNC8();
  FUNC10();

  prev_time = 0;

  if (daemonize) {
    FUNC11();
  }

  if (FUNC1 (username) < 0 && !interactive) {
    FUNC7 (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    FUNC6 (1);
  }

  FUNC9 (sfd, &ct_rpc_server, &memcache_rpc_server);

  FUNC12 (SIGINT, sigint_handler);
  FUNC12 (SIGTERM, sigterm_handler);
  FUNC12 (SIGUSR1, sigusr1_handler);
  FUNC12 (SIGRTMAX, sigrtmax_handler);
  FUNC12 (SIGPIPE, SIG_IGN);
  if (daemonize) {
    FUNC12 (SIGHUP, sighup_handler);
  }

  for (i = 0; ; i++) {
    if (verbosity > 0 && !(i & 255)) {
      FUNC7 (stderr, "epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\n",
         active_connections, maxconn, NB_used, NB_alloc, NB_max);
    }
    FUNC5 (57);
    if (now != prev_time) {
      prev_time = now;
      FUNC3();
    }
    if (quit_steps && !--quit_steps) break;
  }

  FUNC4 (sfd);
  FUNC0 (FUNC2 (sfd) >= 0);
}