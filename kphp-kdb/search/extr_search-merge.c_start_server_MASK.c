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
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;

/* Variables and functions */
 scalar_t__ CS ; 
 int CSN ; 
 int NB_alloc ; 
 int NB_max ; 
 int NB_used ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  accept_new_connections ; 
 int active_connections ; 
 int /*<<< orphan*/  backlog ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ daemonize ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  interactive ; 
 int maxconn ; 
 int now ; 
 int port ; 
 scalar_t__ quit_steps ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ sdf ; 
 scalar_t__ FUNC14 (int,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 TYPE_1__ settings_addr ; 
 int /*<<< orphan*/  sighup_handler ; 
 int /*<<< orphan*/  sigint_handler ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigterm_handler ; 
 int /*<<< orphan*/  sigusr1_handler ; 
 int /*<<< orphan*/  stderr ; 
 char* username ; 
 scalar_t__ verbosity ; 

void FUNC17 (void) {
  //  struct sigaction sa;
  char buf[64];
  int i;
  int prev_time;

  FUNC11();
  FUNC12();

  prev_time = 0;

  if (!sdf) {
    sdf = FUNC14 (port, settings_addr, backlog, 0);
  }

  if (sdf < 0) {
    FUNC10(stderr, "cannot open server socket at port %d: %m\n", port);
    FUNC9(3);
  }

  if (verbosity) {
    FUNC10 (stderr, "created listening socket at %s:%d, fd=%ld\n", FUNC2(settings_addr.s_addr, buf), port, sdf);
  }

  if (daemonize) {
    FUNC15();
  }

  if (FUNC0(username) < 0 && !interactive) {
    FUNC10 (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    FUNC9(1);
  }

  FUNC7 (sdf, -10, accept_new_connections, 0);
  FUNC6 (sdf, 7);

  for (i = 0; i < CSN; i++) {
    FUNC3 (CS+i);
  }

  FUNC16(SIGINT, sigint_handler);
  FUNC16(SIGTERM, sigterm_handler);
  FUNC16(SIGUSR1, sigusr1_handler);
  FUNC16(SIGPIPE, SIG_IGN);
  if (daemonize) {
    FUNC16(SIGHUP, sighup_handler);
    FUNC13();
  }

  for (i = 0; ; i++) {
    if (verbosity > 0 && !(i & 255)) {
      FUNC10 (stderr, "epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\n",
         active_connections, maxconn, NB_used, NB_alloc, NB_max);
    }
    FUNC8 (500);
    if (now != prev_time) {
      prev_time = now;
      FUNC4();
    }
    if (quit_steps && !--quit_steps) break;
  }

  FUNC5 (sdf);
  FUNC1(sdf);

  //  flush_binlog_ts();
}