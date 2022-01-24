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
struct sigaction {int /*<<< orphan*/  sa_flags; int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_handler; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  Binlog ; 
 long long FullVersionStr ; 
 int /*<<< orphan*/  NB_alloc ; 
 int /*<<< orphan*/  NB_max ; 
 int /*<<< orphan*/  NB_used ; 
 int /*<<< orphan*/  SA_NOCLDSTOP ; 
 long long SIGCHLD ; 
 long long SIGHUP ; 
 long long SIGINT ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int SIGRTMAX ; 
 long long SIGTERM ; 
 long long SIGUSR1 ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  active_connections ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  backlog ; 
 int /*<<< orphan*/  binlog_disabled ; 
 scalar_t__ binlogname ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  copyexec_main_sig_handler ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  ct_copyexec_engine_server ; 
 scalar_t__ daemonize ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,long long) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 scalar_t__ log_readto_pos ; 
 int /*<<< orphan*/  maxconn ; 
 int /*<<< orphan*/  memcache_methods ; 
 int now ; 
 long long pending_signals ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,long long) ; 
 scalar_t__ port ; 
 int /*<<< orphan*/  FUNC18 () ; 
 scalar_t__ results_client_creation_time ; 
 scalar_t__ results_client_pid ; 
 scalar_t__ FUNC19 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  settings_addr ; 
 scalar_t__ sfd ; 
 scalar_t__ FUNC21 (int,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,long long) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int) ; 
 int /*<<< orphan*/  FUNC27 (long long) ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 (long long) ; 
 int /*<<< orphan*/  FUNC30 (int,char*,long long,...) ; 

void FUNC31 (void) {
  int i, prev_time = 0;

  FUNC11 ();

  if (!sfd && port >= 0) {
    sfd = FUNC19 (port, settings_addr, backlog, 0);
    if (sfd < 0) {
      FUNC16 ("cannot open server socket at port %d: %m\n", port);
      FUNC7 (3);
    }
    FUNC13 ();
  }

  if (daemonize) {
    FUNC20 ();
    FUNC18 ();
  }

  FUNC30 (1, "%s\n", FullVersionStr);

  if (binlogname && !binlog_disabled) {
    FUNC30 (3, "log_readto_pos: %lld\n", log_readto_pos);
    FUNC1 (FUNC0 (Binlog) == log_readto_pos);
  }

  i = FUNC8 ();
  FUNC30 (1, "found %d running transactions\n", i);

  FUNC3 ();

  if (sfd) {
    FUNC12 (sfd, &ct_copyexec_engine_server, &memcache_methods);
  }

  FUNC25 (SIGPIPE, SIG_IGN);
  FUNC25 (SIGIO, SIG_IGN);

  sigset_t signal_set;
  FUNC23 (&signal_set);
  FUNC22 (&signal_set, SIGINT);
  FUNC22 (&signal_set, SIGTERM);
  FUNC22 (&signal_set, SIGUSR1);
  FUNC22 (&signal_set, SIGCHLD);
  if (daemonize) {
    FUNC22 (&signal_set, SIGHUP);
  }
  struct sigaction act;
  act.sa_handler = copyexec_main_sig_handler;
  act.sa_mask = signal_set;
  act.sa_flags = SA_NOCLDSTOP;
  for (i = 1; i <= SIGRTMAX; i++) {
    if (FUNC24 (&signal_set, i)) {
      if (FUNC21 (i, &act, NULL) < 0) {
        FUNC16 ("sigaction (%d) failed. %m\n", i);
        FUNC7 (1);
      }
    }
  }

  int quit_steps = 0;

  for (i = 0; ; i++) {
    if (!(i & 1023)) {
      FUNC30 (2, "epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\n",
	       active_connections, maxconn, NB_used, NB_alloc, NB_max);
    }
    FUNC6 (77);

    if (FUNC14 ()) {
      break;
    }

    if (pending_signals & (1LL << SIGCHLD)) {
      FUNC17 (&signal_set, SIGCHLD);
      FUNC16 ("got SIGCHLD.\n");
      FUNC28 ();
    }

    if (pending_signals & (1LL << SIGHUP)) {
      FUNC17 (&signal_set, SIGHUP);
      FUNC16 ("got SIGHUP.\n");
      FUNC26 (2);
    }

    if (pending_signals & (1LL << SIGUSR1)) {
      FUNC17 (&signal_set, SIGUSR1);
      FUNC16 ("got SIGUSR1, rotate logs.\n");
      FUNC18 ();
      FUNC29 (SIGUSR1);
      FUNC27 (SIGUSR1);
      if (results_client_pid && results_client_creation_time && results_client_creation_time == FUNC10 (results_client_pid)) {
        FUNC15 (results_client_pid, SIGUSR1);
      }

      FUNC26 (2);
    }

    if (now != prev_time) {
      prev_time = now;
      FUNC4 ();
    }

    if (quit_steps && !--quit_steps) break;
  }

  if (sfd) {
    FUNC5 (sfd);
    FUNC2 (sfd);
  }

  FUNC9 ();
  FUNC26 (2);
  FUNC30 (0, "Main process terminated (pending_signals: 0x%llx).\n", pending_signals);
}