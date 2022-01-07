
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_flags; int sa_mask; int sa_handler; } ;
typedef int sigset_t ;


 int Binlog ;
 long long FullVersionStr ;
 int NB_alloc ;
 int NB_max ;
 int NB_used ;
 int SA_NOCLDSTOP ;
 long long SIGCHLD ;
 long long SIGHUP ;
 long long SIGINT ;
 int SIGIO ;
 int SIGPIPE ;
 int SIGRTMAX ;
 long long SIGTERM ;
 long long SIGUSR1 ;
 int SIG_IGN ;
 int active_connections ;
 scalar_t__ append_to_binlog (int ) ;
 int assert (int) ;
 int backlog ;
 int binlog_disabled ;
 scalar_t__ binlogname ;
 int close (scalar_t__) ;
 int copyexec_aux_binlog_seek () ;
 int copyexec_main_sig_handler ;
 int cron () ;
 int ct_copyexec_engine_server ;
 scalar_t__ daemonize ;
 int epoll_close (scalar_t__) ;
 int epoll_work (int) ;
 int exit (int) ;
 int find_running_transactions () ;
 int flush_binlog_last () ;
 scalar_t__ get_process_creation_time (scalar_t__) ;
 int init_epoll () ;
 int init_listening_connection (scalar_t__,int *,int *) ;
 int init_netbuffers () ;
 scalar_t__ interrupted_by_signal () ;
 int kill (scalar_t__,long long) ;
 int kprintf (char*,...) ;
 scalar_t__ log_readto_pos ;
 int maxconn ;
 int memcache_methods ;
 int now ;
 long long pending_signals ;
 int pending_signals_clear_bit (int *,long long) ;
 scalar_t__ port ;
 int reopen_logs () ;
 scalar_t__ results_client_creation_time ;
 scalar_t__ results_client_pid ;
 scalar_t__ server_socket (scalar_t__,int ,int ,int ) ;
 int setsid () ;
 int settings_addr ;
 scalar_t__ sfd ;
 scalar_t__ sigaction (int,struct sigaction*,int *) ;
 int sigaddset (int *,long long) ;
 int sigemptyset (int *) ;
 scalar_t__ sigismember (int *,int) ;
 int signal (int ,int ) ;
 int sync_binlog (int) ;
 int transaction_auto_kill (long long) ;
 int transaction_check_child_status () ;
 int transaction_child_kill (long long) ;
 int vkprintf (int,char*,long long,...) ;

void start_server (void) {
  int i, prev_time = 0;

  init_epoll ();

  if (!sfd && port >= 0) {
    sfd = server_socket (port, settings_addr, backlog, 0);
    if (sfd < 0) {
      kprintf ("cannot open server socket at port %d: %m\n", port);
      exit (3);
    }
    init_netbuffers ();
  }

  if (daemonize) {
    setsid ();
    reopen_logs ();
  }

  vkprintf (1, "%s\n", FullVersionStr);

  if (binlogname && !binlog_disabled) {
    vkprintf (3, "log_readto_pos: %lld\n", log_readto_pos);
    assert (append_to_binlog (Binlog) == log_readto_pos);
  }

  i = find_running_transactions ();
  vkprintf (1, "found %d running transactions\n", i);

  copyexec_aux_binlog_seek ();

  if (sfd) {
    init_listening_connection (sfd, &ct_copyexec_engine_server, &memcache_methods);
  }

  signal (SIGPIPE, SIG_IGN);
  signal (SIGIO, SIG_IGN);

  sigset_t signal_set;
  sigemptyset (&signal_set);
  sigaddset (&signal_set, SIGINT);
  sigaddset (&signal_set, SIGTERM);
  sigaddset (&signal_set, SIGUSR1);
  sigaddset (&signal_set, SIGCHLD);
  if (daemonize) {
    sigaddset (&signal_set, SIGHUP);
  }
  struct sigaction act;
  act.sa_handler = copyexec_main_sig_handler;
  act.sa_mask = signal_set;
  act.sa_flags = SA_NOCLDSTOP;
  for (i = 1; i <= SIGRTMAX; i++) {
    if (sigismember (&signal_set, i)) {
      if (sigaction (i, &act, ((void*)0)) < 0) {
        kprintf ("sigaction (%d) failed. %m\n", i);
        exit (1);
      }
    }
  }

  int quit_steps = 0;

  for (i = 0; ; i++) {
    if (!(i & 1023)) {
      vkprintf (2, "epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\n",
        active_connections, maxconn, NB_used, NB_alloc, NB_max);
    }
    epoll_work (77);

    if (interrupted_by_signal ()) {
      break;
    }

    if (pending_signals & (1LL << SIGCHLD)) {
      pending_signals_clear_bit (&signal_set, SIGCHLD);
      kprintf ("got SIGCHLD.\n");
      transaction_check_child_status ();
    }

    if (pending_signals & (1LL << SIGHUP)) {
      pending_signals_clear_bit (&signal_set, SIGHUP);
      kprintf ("got SIGHUP.\n");
      sync_binlog (2);
    }

    if (pending_signals & (1LL << SIGUSR1)) {
      pending_signals_clear_bit (&signal_set, SIGUSR1);
      kprintf ("got SIGUSR1, rotate logs.\n");
      reopen_logs ();
      transaction_child_kill (SIGUSR1);
      transaction_auto_kill (SIGUSR1);
      if (results_client_pid && results_client_creation_time && results_client_creation_time == get_process_creation_time (results_client_pid)) {
        kill (results_client_pid, SIGUSR1);
      }

      sync_binlog (2);
    }

    if (now != prev_time) {
      prev_time = now;
      cron ();
    }

    if (quit_steps && !--quit_steps) break;
  }

  if (sfd) {
    epoll_close (sfd);
    close (sfd);
  }

  flush_binlog_last ();
  sync_binlog (2);
  vkprintf (0, "Main process terminated (pending_signals: 0x%llx).\n", pending_signals);
}
