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
 scalar_t__ binlogname ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ daemonize ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/ * fd ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * fsize ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  interactive ; 
 int maxconn ; 
 int now ; 
 int /*<<< orphan*/  FUNC13 (int,scalar_t__,int) ; 
 int port ; 
 scalar_t__ quit_steps ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ sdf ; 
 scalar_t__ FUNC15 (int,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 TYPE_1__ settings_addr ; 
 int /*<<< orphan*/  sighup_handler ; 
 int /*<<< orphan*/  sigint_handler ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigterm_handler ; 
 int /*<<< orphan*/  sigusr1_handler ; 
 int /*<<< orphan*/  stderr ; 
 char* username ; 
 scalar_t__ verbosity ; 

void FUNC19 (void) { 
  //  struct sigaction sa;
  char buf[64];
  int i;
  int prev_time;

  FUNC11();
  FUNC12();

  prev_time = 0;

  if (!sdf) {
    sdf = FUNC15 (port, settings_addr, backlog, 0);
  }

  if (sdf < 0) {
    FUNC10(stderr, "cannot open server socket at port %d: %m\n", port);
    FUNC8(3);
  }

  if (verbosity) {
    FUNC10 (stderr, "created listening socket at %s:%d, fd=%ld\n", FUNC2(settings_addr.s_addr, buf), port, sdf);
  }

  if (daemonize) {
    FUNC17();
  }

  if (FUNC0(username) < 0 && !interactive) {
    FUNC10 (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    FUNC8(1);
  }

  if (binlogname) {
    FUNC13 (2, binlogname, 1);
    FUNC16 (fd[2], fsize[2]);
  }
 
  FUNC6 (sdf, -10, accept_new_connections, 0);
  FUNC5 (sdf, 7);

  FUNC18(SIGINT, sigint_handler);
  FUNC18(SIGTERM, sigterm_handler);
  FUNC18(SIGUSR1, sigusr1_handler);
  FUNC18(SIGPIPE, SIG_IGN);
  if (daemonize) {
    FUNC18(SIGHUP, sighup_handler);
    FUNC14();
  }

  for (i = 0; ; i++) {
    if (verbosity > 0 && !(i & 255)) {
      FUNC10 (stderr, "epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\n",
	       active_connections, maxconn, NB_used, NB_alloc, NB_max);
    }
    FUNC7 (1000);
    if (now != prev_time) {
      prev_time = now;
      FUNC3();
    }
    if (quit_steps && !--quit_steps) break;
  }

  FUNC4 (sdf);
  FUNC1(sdf);
  
  FUNC9();
}