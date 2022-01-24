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
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  active_connections ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  ct_spell_engine_server ; 
 scalar_t__ daemonize ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  maxconn ; 
 int /*<<< orphan*/  memcache_methods ; 
 int now ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  sfd ; 
 int /*<<< orphan*/  sighup_handler ; 
 int /*<<< orphan*/  sigint_handler ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigterm_handler ; 
 int /*<<< orphan*/  sigusr1_handler ; 
 int /*<<< orphan*/  stderr ; 
 char* username ; 
 int /*<<< orphan*/  FUNC12 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC13 (void) {
  int i;
  int prev_time;

  FUNC7 ();
  FUNC9 ();

  prev_time = 0;

  if (daemonize) {
    FUNC10();
  }

  if (FUNC0(username) < 0) {
    FUNC6 (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    FUNC5 (1);
  }

  FUNC8 (sfd, &ct_spell_engine_server, &memcache_methods);

  FUNC11 (SIGINT, sigint_handler);
  FUNC11 (SIGTERM, sigterm_handler);
  FUNC11 (SIGUSR1, sigusr1_handler);
  FUNC11 (SIGPIPE, SIG_IGN);
  FUNC11 (SIGIO, SIG_IGN);
  if (daemonize) {
    FUNC11 (SIGHUP, sighup_handler);
  }

  int quit_steps = 0;

  for (i = 0; ; i++) {
    if (!(i & 255)) {
      FUNC12 (1, "epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\n",
	       active_connections, maxconn, NB_used, NB_alloc, NB_max);
    }
    FUNC4 (57);

    if (now != prev_time) {
      prev_time = now;
      FUNC2();
    }
    if (quit_steps && !--quit_steps) break;
  }

  FUNC3 (sfd);
  FUNC1 (sfd);

}