#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct conn_query {int dummy; } ;
struct TYPE_8__ {struct conn_query* first_query; } ;
struct TYPE_7__ {int /*<<< orphan*/ * rpc_ready; } ;
struct TYPE_6__ {int /*<<< orphan*/  s_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  NB_alloc ; 
 int /*<<< orphan*/  NB_max ; 
 int /*<<< orphan*/  NB_used ; 
 int RPC_INVOKE_REQ ; 
 int SA_ONSTACK ; 
 int SA_RESTART ; 
 int SA_SIGINFO ; 
 long long SIGHUP ; 
 long long SIGINT ; 
 long long SIGPIPE ; 
 long long SIGPOLL ; 
 scalar_t__ SIGRTMAX ; 
 scalar_t__ SIGRTMIN ; 
 scalar_t__ SIGSTAT ; 
 long long SIGTERM ; 
 long long SIGUSR1 ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  SM_SPECIAL ; 
 int /*<<< orphan*/  active_connections ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  backlog ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  ct_php_engine_http_server ; 
 int /*<<< orphan*/  ct_php_engine_rpc_server ; 
 int /*<<< orphan*/  ct_php_rpc_client ; 
 scalar_t__ daemonize ; 
 int /*<<< orphan*/  db_ct ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (long long,int /*<<< orphan*/ ) ; 
 double FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 void* FUNC17 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  hts_stopped ; 
 int /*<<< orphan*/  http_methods ; 
 int http_port ; 
 scalar_t__ http_sfd ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/ * logname_pattern ; 
 scalar_t__ master_flag ; 
 int /*<<< orphan*/  maxconn ; 
 scalar_t__ no_sql ; 
 int now ; 
 TYPE_4__ pending_http_queue ; 
 long long pending_signals ; 
 int /*<<< orphan*/  php_worker_run_flag ; 
 int /*<<< orphan*/  FUNC25 (int*) ; 
 int /*<<< orphan*/  port ; 
 double precise_now ; 
 int /*<<< orphan*/  FUNC26 (int,int*,int) ; 
 scalar_t__ quit_steps ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  rpc_client_ct ; 
 char* rpc_client_host ; 
 TYPE_3__ rpc_client_methods ; 
 int rpc_client_port ; 
 void* rpc_client_target ; 
 void* rpc_main_target ; 
 int /*<<< orphan*/  rpc_methods ; 
 int rpc_port ; 
 scalar_t__ rpc_sfd ; 
 int /*<<< orphan*/  rpc_stopped ; 
 int /*<<< orphan*/  FUNC28 () ; 
 scalar_t__ run_once ; 
 int run_once_count ; 
 scalar_t__ FUNC29 (int,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 () ; 
 TYPE_1__ settings_addr ; 
 int /*<<< orphan*/  sighup_handler ; 
 int /*<<< orphan*/  sigint_handler ; 
 long long sigpoll_cnt ; 
 int /*<<< orphan*/  sigpoll_handler ; 
 int /*<<< orphan*/  sigstats_handler ; 
 int /*<<< orphan*/  sigterm_handler ; 
 scalar_t__ sigterm_on ; 
 double sigterm_time ; 
 int /*<<< orphan*/  sigusr1_handler ; 
 scalar_t__ spoll_send_stats ; 
 int sql_target_id ; 
 int /*<<< orphan*/  FUNC31 (scalar_t__*,scalar_t__ (*) (),int) ; 
 scalar_t__ FUNC32 () ; 
 char* username ; 
 scalar_t__ verbosity ; 
 int /*<<< orphan*/  FUNC33 (int,char*,...) ; 
 int FUNC34 (int,int*,size_t) ; 
 int /*<<< orphan*/  FUNC35 () ; 

void FUNC36 (void) {
  int i;
  int prev_time;
  double next_create_outbound = 0;

  if (run_once) {
    master_flag = 0;
    rpc_port = -1;
    http_port = -1;
    rpc_client_port = -1;
  }

  pending_signals = 0;
  if (daemonize) {
    FUNC30();

    FUNC11 (SIGHUP, sighup_handler);
    FUNC27();
  }
  if (master_flag) {
    FUNC33 (-1, "master\n");
    if (rpc_port != -1) {
      FUNC33 (-1, "rpc_port is ignored in master mode\n");
      rpc_port = -1;
    }

    if (0 && http_port != -1) {
      FUNC33 (-1, "http_port is ignored in master mode\n");
      http_port = -1;
    }
  }

  FUNC23();

  FUNC20();
  if (master_flag) {
    FUNC31 (http_port > 0 ? &http_sfd : NULL, &try_get_http_fd, http_port);

    if (logname_pattern != NULL) {
      FUNC27();
    }
  }

  prev_time = 0;

  if (http_port > 0 && http_sfd < 0) {
    FUNC8 (!master_flag, "failed to get http_fd\n");
    if (master_flag) {
      FUNC33 (-1, "try_get_http_fd after start_master\n");
      FUNC16 (1);
    }
    http_sfd = FUNC32();
    if (http_sfd < 0) {
      FUNC33 (-1, "cannot open http server socket at port %d: %m\n", http_port);
      FUNC16 (1);
    }
  }

  if (rpc_port > 0 && rpc_sfd < 0) {
    rpc_sfd = FUNC29 (rpc_port, settings_addr, backlog, 0);
    if (rpc_sfd < 0) {
      FUNC33 (-1, "cannot open rpc server socket at port %d: %m\n", rpc_port);
      FUNC16 (1);
    }
  }

  if (verbosity > 0 && http_sfd >= 0) {
    FUNC33 (-1, "created listening socket at %s:%d, fd=%d\n", FUNC3 (settings_addr.s_addr, NULL), port, http_sfd);
  }

  if (FUNC1 (username) < 0) {
    FUNC33 (-1, "fatal: cannot change user to %s\n", username ? username : "(none)");
    FUNC16 (1);
  }

  if (http_sfd >= 0) {
    FUNC22 (http_sfd, &ct_php_engine_http_server, &http_methods, SM_SPECIAL);
  }

  if (rpc_sfd >= 0) {
    FUNC21 (rpc_sfd, &ct_php_engine_rpc_server, &rpc_methods);
  }

  if (no_sql) {
    sql_target_id = -1;
  } else {
    sql_target_id = FUNC17 ("localhost", 3306, &db_ct);
    FUNC0 (sql_target_id != -1);
  }

  if ((rpc_client_host != NULL) ^ (rpc_client_port != -1)) {
    FUNC33 (-1, "warning: only rpc_client_host or rpc_client_port is defined\n");
  }
  if (rpc_client_host != NULL && rpc_client_port != -1) {
    FUNC33 (-1, "create rpc client target: %s:%d\n", rpc_client_host, rpc_client_port);
    rpc_client_target = FUNC17 (rpc_client_host, rpc_client_port, &rpc_client_ct);
    rpc_main_target = rpc_client_target;
  }

  if (run_once) {
    int pipe_fd[2];
    FUNC25 (pipe_fd);

    int read_fd = pipe_fd[0];
    int write_fd = pipe_fd[1];

    rpc_client_methods.rpc_ready = NULL;
    FUNC5 (read_fd, &ct_php_rpc_client, &rpc_client_methods);

    int q[6];
    int qsize = 6 * sizeof (int);
    q[2] = RPC_INVOKE_REQ;
    int i;
    for (i = 0; i < run_once_count; i++) {
      FUNC26 (i, q, qsize);
      FUNC0 (FUNC34 (write_fd, q, (size_t)qsize) == qsize);
    }
  }

  FUNC18();
  //create_all_outbound_connections();

  FUNC11 (SIGTERM, sigterm_handler);
  FUNC11 (SIGPIPE, SIG_IGN);
  FUNC11 (SIGINT, sigint_handler);
  FUNC11 (SIGUSR1, sigusr1_handler);
  FUNC11 (SIGPOLL, sigpoll_handler);

  //using sigaction for sigpoll
  FUNC0 (SIGRTMIN <= SIGSTAT && SIGSTAT <= SIGRTMAX);
  FUNC10 (SIGSTAT, NULL, FUNC9(), SA_SIGINFO | SA_ONSTACK | SA_RESTART, sigstats_handler);

  FUNC7();

  FUNC33 (1, "Server started\n");
  for (i = 0; !(pending_signals & ~((1ll << SIGUSR1) | (1ll << SIGHUP))); i++) {
    if (verbosity > 0 && !(i & 255)) {
      FUNC33 (1, "epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\n",
          active_connections, maxconn, NB_used, NB_alloc, NB_max);
    }
    FUNC15 (57);

    if (precise_now > next_create_outbound) {
      FUNC4();
      next_create_outbound = precise_now + 0.03 + 0.02 * FUNC12();
    }

    while (spoll_send_stats > 0) {
      FUNC35();
      spoll_send_stats--;
    }

    if (sigpoll_cnt > 0) {
      FUNC33 (1, "after epoll_work(), sigpoll_cnt=%d\n", sigpoll_cnt);
      sigpoll_cnt = 0;
    }

    if (pending_signals & (1ll << SIGHUP)) {
      pending_signals &= ~(1ll << SIGHUP);
    }

    if (pending_signals & (1ll << SIGUSR1)) {
      pending_signals &= ~(1ll << SIGUSR1);

      FUNC27();
    }

    if (now != prev_time) {
      prev_time = now;
      FUNC6();
    }

    FUNC24();
    if (sigterm_on && !rpc_stopped) {
      FUNC28();
    }
    if (sigterm_on && !hts_stopped) {
      FUNC19();
    }

    if (&epoll_pre_event) {
      FUNC14();
    }

    if (quit_steps && !--quit_steps) break;

    if (sigterm_on && precise_now > sigterm_time && !php_worker_run_flag &&
        pending_http_queue.first_query == (struct conn_query *)&pending_http_queue) {
      FUNC33 (1, "Quitting because of sigterm\n");
      break;
    }
  }

  if (verbosity > 0 && pending_signals) {
    FUNC33 (1, "Quitting because of pending signals = %llx\n", pending_signals);
  }

  if (http_sfd >= 0) {
    FUNC13 (http_sfd);
    FUNC0 (FUNC2 (http_sfd) >= 0);
  }
}