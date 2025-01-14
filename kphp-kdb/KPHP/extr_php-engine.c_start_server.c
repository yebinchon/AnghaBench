
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct conn_query {int dummy; } ;
struct TYPE_8__ {struct conn_query* first_query; } ;
struct TYPE_7__ {int * rpc_ready; } ;
struct TYPE_6__ {int s_addr; } ;


 int NB_alloc ;
 int NB_max ;
 int NB_used ;
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
 int SIG_IGN ;
 int SM_SPECIAL ;
 int active_connections ;
 int assert (int) ;
 int backlog ;
 scalar_t__ change_user (char*) ;
 scalar_t__ close (scalar_t__) ;
 int conv_addr (int ,int *) ;
 int create_all_outbound_connections () ;
 int create_pipe_reader (int,int *,TYPE_3__*) ;
 int cron () ;
 int ct_php_engine_http_server ;
 int ct_php_engine_rpc_server ;
 int ct_php_rpc_client ;
 scalar_t__ daemonize ;
 int db_ct ;
 int dl_allow_all_signals () ;
 int dl_assert (int,char*) ;
 int dl_get_empty_sigset () ;
 int dl_sigaction (scalar_t__,int *,int ,int,int ) ;
 int dl_signal (long long,int ) ;
 double drand48 () ;
 int epoll_close (scalar_t__) ;
 int epoll_pre_event () ;
 int epoll_work (int) ;
 int exit (int) ;
 void* get_target (char*,int,int *) ;
 int get_utime_monotonic () ;
 int hts_stop () ;
 int hts_stopped ;
 int http_methods ;
 int http_port ;
 scalar_t__ http_sfd ;
 int init_epoll () ;
 int init_listening_connection (scalar_t__,int *,int *) ;
 int init_listening_tcpv6_connection (scalar_t__,int *,int *,int ) ;
 int init_netbuffers () ;
 int lease_cron () ;
 int * logname_pattern ;
 scalar_t__ master_flag ;
 int maxconn ;
 scalar_t__ no_sql ;
 int now ;
 TYPE_4__ pending_http_queue ;
 long long pending_signals ;
 int php_worker_run_flag ;
 int pipe (int*) ;
 int port ;
 double precise_now ;
 int prepare_rpc_query_raw (int,int*,int) ;
 scalar_t__ quit_steps ;
 int reopen_logs () ;
 int rpc_client_ct ;
 char* rpc_client_host ;
 TYPE_3__ rpc_client_methods ;
 int rpc_client_port ;
 void* rpc_client_target ;
 void* rpc_main_target ;
 int rpc_methods ;
 int rpc_port ;
 scalar_t__ rpc_sfd ;
 int rpc_stopped ;
 int rpcc_stop () ;
 scalar_t__ run_once ;
 int run_once_count ;
 scalar_t__ server_socket (int,TYPE_1__,int ,int ) ;
 int setsid () ;
 TYPE_1__ settings_addr ;
 int sighup_handler ;
 int sigint_handler ;
 long long sigpoll_cnt ;
 int sigpoll_handler ;
 int sigstats_handler ;
 int sigterm_handler ;
 scalar_t__ sigterm_on ;
 double sigterm_time ;
 int sigusr1_handler ;
 scalar_t__ spoll_send_stats ;
 int sql_target_id ;
 int start_master (scalar_t__*,scalar_t__ (*) (),int) ;
 scalar_t__ try_get_http_fd () ;
 char* username ;
 scalar_t__ verbosity ;
 int vkprintf (int,char*,...) ;
 int write (int,int*,size_t) ;
 int write_full_stats_to_pipe () ;

void start_server (void) {
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
    setsid();

    dl_signal (SIGHUP, sighup_handler);
    reopen_logs();
  }
  if (master_flag) {
    vkprintf (-1, "master\n");
    if (rpc_port != -1) {
      vkprintf (-1, "rpc_port is ignored in master mode\n");
      rpc_port = -1;
    }

    if (0 && http_port != -1) {
      vkprintf (-1, "http_port is ignored in master mode\n");
      http_port = -1;
    }
  }

  init_netbuffers();

  init_epoll();
  if (master_flag) {
    start_master (http_port > 0 ? &http_sfd : ((void*)0), &try_get_http_fd, http_port);

    if (logname_pattern != ((void*)0)) {
      reopen_logs();
    }
  }

  prev_time = 0;

  if (http_port > 0 && http_sfd < 0) {
    dl_assert (!master_flag, "failed to get http_fd\n");
    if (master_flag) {
      vkprintf (-1, "try_get_http_fd after start_master\n");
      exit (1);
    }
    http_sfd = try_get_http_fd();
    if (http_sfd < 0) {
      vkprintf (-1, "cannot open http server socket at port %d: %m\n", http_port);
      exit (1);
    }
  }

  if (rpc_port > 0 && rpc_sfd < 0) {
    rpc_sfd = server_socket (rpc_port, settings_addr, backlog, 0);
    if (rpc_sfd < 0) {
      vkprintf (-1, "cannot open rpc server socket at port %d: %m\n", rpc_port);
      exit (1);
    }
  }

  if (verbosity > 0 && http_sfd >= 0) {
    vkprintf (-1, "created listening socket at %s:%d, fd=%d\n", conv_addr (settings_addr.s_addr, ((void*)0)), port, http_sfd);
  }

  if (change_user (username) < 0) {
    vkprintf (-1, "fatal: cannot change user to %s\n", username ? username : "(none)");
    exit (1);
  }

  if (http_sfd >= 0) {
    init_listening_tcpv6_connection (http_sfd, &ct_php_engine_http_server, &http_methods, SM_SPECIAL);
  }

  if (rpc_sfd >= 0) {
    init_listening_connection (rpc_sfd, &ct_php_engine_rpc_server, &rpc_methods);
  }

  if (no_sql) {
    sql_target_id = -1;
  } else {
    sql_target_id = get_target ("localhost", 3306, &db_ct);
    assert (sql_target_id != -1);
  }

  if ((rpc_client_host != ((void*)0)) ^ (rpc_client_port != -1)) {
    vkprintf (-1, "warning: only rpc_client_host or rpc_client_port is defined\n");
  }
  if (rpc_client_host != ((void*)0) && rpc_client_port != -1) {
    vkprintf (-1, "create rpc client target: %s:%d\n", rpc_client_host, rpc_client_port);
    rpc_client_target = get_target (rpc_client_host, rpc_client_port, &rpc_client_ct);
    rpc_main_target = rpc_client_target;
  }

  if (run_once) {
    int pipe_fd[2];
    pipe (pipe_fd);

    int read_fd = pipe_fd[0];
    int write_fd = pipe_fd[1];

    rpc_client_methods.rpc_ready = ((void*)0);
    create_pipe_reader (read_fd, &ct_php_rpc_client, &rpc_client_methods);

    int q[6];
    int qsize = 6 * sizeof (int);
    q[2] = RPC_INVOKE_REQ;
    int i;
    for (i = 0; i < run_once_count; i++) {
      prepare_rpc_query_raw (i, q, qsize);
      assert (write (write_fd, q, (size_t)qsize) == qsize);
    }
  }

  get_utime_monotonic();


  dl_signal (SIGTERM, sigterm_handler);
  dl_signal (SIGPIPE, SIG_IGN);
  dl_signal (SIGINT, sigint_handler);
  dl_signal (SIGUSR1, sigusr1_handler);
  dl_signal (SIGPOLL, sigpoll_handler);


  assert (SIGRTMIN <= SIGSTAT && SIGSTAT <= SIGRTMAX);
  dl_sigaction (SIGSTAT, ((void*)0), dl_get_empty_sigset(), SA_SIGINFO | SA_ONSTACK | SA_RESTART, sigstats_handler);

  dl_allow_all_signals();

  vkprintf (1, "Server started\n");
  for (i = 0; !(pending_signals & ~((1ll << SIGUSR1) | (1ll << SIGHUP))); i++) {
    if (verbosity > 0 && !(i & 255)) {
      vkprintf (1, "epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\n",
          active_connections, maxconn, NB_used, NB_alloc, NB_max);
    }
    epoll_work (57);

    if (precise_now > next_create_outbound) {
      create_all_outbound_connections();
      next_create_outbound = precise_now + 0.03 + 0.02 * drand48();
    }

    while (spoll_send_stats > 0) {
      write_full_stats_to_pipe();
      spoll_send_stats--;
    }

    if (sigpoll_cnt > 0) {
      vkprintf (1, "after epoll_work(), sigpoll_cnt=%d\n", sigpoll_cnt);
      sigpoll_cnt = 0;
    }

    if (pending_signals & (1ll << SIGHUP)) {
      pending_signals &= ~(1ll << SIGHUP);
    }

    if (pending_signals & (1ll << SIGUSR1)) {
      pending_signals &= ~(1ll << SIGUSR1);

      reopen_logs();
    }

    if (now != prev_time) {
      prev_time = now;
      cron();
    }

    lease_cron();
    if (sigterm_on && !rpc_stopped) {
      rpcc_stop();
    }
    if (sigterm_on && !hts_stopped) {
      hts_stop();
    }

    if (epoll_pre_event) {
      epoll_pre_event();
    }

    if (quit_steps && !--quit_steps) break;

    if (sigterm_on && precise_now > sigterm_time && !php_worker_run_flag &&
        pending_http_queue.first_query == (struct conn_query *)&pending_http_queue) {
      vkprintf (1, "Quitting because of sigterm\n");
      break;
    }
  }

  if (verbosity > 0 && pending_signals) {
    vkprintf (1, "Quitting because of pending signals = %llx\n", pending_signals);
  }

  if (http_sfd >= 0) {
    epoll_close (http_sfd);
    assert (close (http_sfd) >= 0);
  }
}
