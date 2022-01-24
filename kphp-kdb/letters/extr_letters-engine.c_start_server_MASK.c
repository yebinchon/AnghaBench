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
 long long SIGHUP ; 
 long long SIGINT ; 
 long long SIGPIPE ; 
 long long SIGPOLL ; 
 long long SIGTERM ; 
 long long SIGUSR1 ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int active_connections ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  backlog ; 
 int /*<<< orphan*/  buf ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  ct_rpc_server ; 
 scalar_t__ daemonize ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int maxconn ; 
 int now ; 
 long long pending_signals ; 
 int port ; 
 scalar_t__ quit_steps ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  rpc_methods ; 
 scalar_t__ FUNC14 (int,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 TYPE_1__ settings_addr ; 
 scalar_t__ sfd ; 
 int /*<<< orphan*/  sighup_handler ; 
 int /*<<< orphan*/  sigint_handler ; 
 int /*<<< orphan*/  FUNC16 (long long,int /*<<< orphan*/ ) ; 
 int sigpoll_cnt ; 
 int /*<<< orphan*/  sigpoll_handler ; 
 int /*<<< orphan*/  sigterm_handler ; 
 int /*<<< orphan*/  sigusr1_handler ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC17 () ; 
 char* username ; 
 int verbosity ; 

void FUNC18 (void) {
  int i;
  int prev_time;

  FUNC10();
  FUNC12();

  prev_time = 0;

  if (!sfd) {
    sfd = FUNC14 (port, settings_addr, backlog, 0);
  }

  if (sfd < 0) {
    FUNC9 (stderr, "cannot open server socket at port %d: %m\n", port);
    FUNC7 (3);
  }

  if (verbosity > 0) {
    FUNC9 (stderr, "created listening socket at %s:%d, fd=%ld\n", FUNC3 (settings_addr.s_addr, buf), port, sfd);
  }

  if (daemonize) {
    FUNC15();
  }

  if (FUNC1 (username) < 0) {
    FUNC9 (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    FUNC7 (1);
  }

  FUNC11 (sfd, &ct_rpc_server, &rpc_methods);

  FUNC16 (SIGINT, sigint_handler);
  FUNC16 (SIGTERM, sigterm_handler);
  FUNC16 (SIGUSR1, sigusr1_handler);
  FUNC16 (SIGPIPE, SIG_IGN);
  FUNC16 (SIGPOLL, sigpoll_handler);
  if (daemonize) {
    FUNC16 (SIGHUP, sighup_handler);
    FUNC13();
  }

  if (verbosity > 0) {
    FUNC9 (stderr, "Server started\n");
  }

  for (i = 0; !(pending_signals & ~((1ll << SIGUSR1) | (1ll << SIGHUP))); i++) {
    if (verbosity > 0 && !(i & 255)) {
      FUNC9 (stderr, "epoll_work(): %d out of %d connections, network bufers: %d used, %d out of %d allocated\n",
         active_connections, maxconn, NB_used, NB_alloc, NB_max);
    }
    FUNC6 (57);

    if (sigpoll_cnt > 0) {
      if (verbosity > 1) {
        FUNC9 (stderr, "after epoll_work(), sigpoll_cnt=%d\n", sigpoll_cnt);
      }
      sigpoll_cnt = 0;
    }

    if (pending_signals & (1ll << SIGHUP)) {
      pending_signals &= ~(1ll << SIGHUP);

      FUNC8 (1);
    }

    if (pending_signals & (1ll << SIGUSR1)) {
      pending_signals &= ~(1ll << SIGUSR1);

      FUNC13();
      FUNC8 (1);
    }

    FUNC17();

    if (now != prev_time) {
      prev_time = now;
      FUNC4();
    }

    if (quit_steps && !--quit_steps) break;
  }

  if (verbosity > 0 && pending_signals) {
    FUNC9 (stderr, "Quitting because of pending signals = %llx\n", pending_signals);
  }

  FUNC5 (sfd);
  FUNC0 (FUNC2 (sfd) >= 0);
}