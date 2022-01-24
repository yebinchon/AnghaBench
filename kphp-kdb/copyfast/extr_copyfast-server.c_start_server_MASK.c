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
 int active_connections ; 
 int /*<<< orphan*/  backlog ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  copyfast_rpc_server ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  ct_rpc_server ; 
 scalar_t__ daemonize ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  interactive ; 
 int maxconn ; 
 int now ; 
 int port ; 
 scalar_t__ quit_steps ; 
 scalar_t__ FUNC11 (int,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 TYPE_1__ settings_addr ; 
 scalar_t__ sfd ; 
 int /*<<< orphan*/  sighup_handler ; 
 int /*<<< orphan*/  sigint_handler ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigterm_handler ; 
 int /*<<< orphan*/  sigusr1_handler ; 
 int /*<<< orphan*/  stderr ; 
 char* username ; 
 scalar_t__ verbosity ; 

void FUNC14 (void) { 
  //  struct sigaction sa;
  char buf[64];
  int i;
  int prev_time;

  FUNC8();
  FUNC10();

  prev_time = 0;

  if (!sfd) {
    sfd = FUNC11 (port, settings_addr, backlog, 0);
  }

  if (sfd < 0) {
    FUNC7(stderr, "cannot open server socket at port %d: %m\n", port);
    FUNC6(3);
  }

  if (verbosity) {
    FUNC7 (stderr, "created listening socket at %s:%d, fd=%ld\n", FUNC2(settings_addr.s_addr, buf), port, sfd);
  }

  if (daemonize) {
    FUNC12();
  }

  if (FUNC0(username) < 0 && !interactive) {
    FUNC7 (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    FUNC6(1);
  }

  FUNC9 (sfd, &ct_rpc_server, &copyfast_rpc_server);
 
  FUNC13(SIGINT, sigint_handler);
  FUNC13(SIGTERM, sigterm_handler);
  FUNC13(SIGUSR1, sigusr1_handler);
  if (daemonize) {
    FUNC13(SIGHUP, sighup_handler);
  }
  FUNC13(SIGPIPE, SIG_IGN);

  for (i = 0; ; i++) {
    if (verbosity > 0 && !(i & 255)) {
      FUNC7 (stderr, "epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\n",
	       active_connections, maxconn, NB_used, NB_alloc, NB_max);
    }
    FUNC5 (53);

    if (now != prev_time) {
      prev_time = now;
      FUNC3();
    }
    if (quit_steps && !--quit_steps) break;
  }

  FUNC4 (sfd);
  FUNC1(sfd);
}