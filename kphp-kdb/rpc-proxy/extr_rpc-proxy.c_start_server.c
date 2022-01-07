
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NB_alloc ;
 int NB_max ;
 int NB_used ;
 int SIGHUP ;
 int SIGINT ;
 int SIGPIPE ;
 int SIGTERM ;
 int SIGUSR1 ;
 int SIGUSR2 ;
 int SIG_IGN ;
 int active_connections ;
 int assert (int) ;
 int backlog ;
 scalar_t__ binlog_mode_on ;
 scalar_t__ change_user (char*) ;
 int close (scalar_t__) ;
 int create_all_outbound_connections () ;
 int cron () ;
 int ct_rpc_server ;
 int ct_tcp_rpc_server ;
 scalar_t__ daemonize ;
 int default_udp_socket ;
 int do_reload_config (int) ;
 double drand48 () ;
 scalar_t__ enable_ipv6 ;
 int epoll_close (scalar_t__) ;
 int epoll_work (int) ;
 int exit (int) ;
 int flush_cbinlog (int) ;
 int flush_index () ;
 int fprintf (int ,char*,...) ;
 int get_utime_monotonic () ;
 int init_epoll () ;
 scalar_t__ init_listening_tcpv6_connection (scalar_t__,int *,int *,scalar_t__) ;
 int init_msg_buffers (int ) ;
 int init_netbuffers () ;
 int init_udp_port (scalar_t__,int,int *,int *,scalar_t__) ;
 int kprintf (char*,scalar_t__) ;
 int maxconn ;
 scalar_t__ need_reload_config ;
 int now ;
 scalar_t__ pending_signals ;
 int port ;
 double precise_now ;
 scalar_t__ quit_steps ;
 int rpc_proxy_inbound ;
 int rpc_proxy_tcp ;
 int rpc_proxy_udp_server ;
 int rpc_proxy_udp_server_methods ;
 scalar_t__ server_socket (int,int ,int ,scalar_t__) ;
 int setsid () ;
 int settings_addr ;
 scalar_t__ sfd ;
 int sighup_handler ;
 int sigint_handler ;
 int signal (int ,int ) ;
 int sigterm_handler ;
 int sigusr1_handler ;
 int sigusr2_handler ;
 int stderr ;
 int tcp_buffers ;
 char* username ;
 scalar_t__ usfd ;
 scalar_t__ verbosity ;

void start_server (void) {

  int i;
  int prev_time;
  double next_create_outbound = 0;

  init_epoll();
  init_netbuffers();
  init_msg_buffers (0);

  prev_time = 0;

  if (daemonize) {
    setsid ();
  }

  if (change_user (username) < 0) {
    fprintf (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    exit (1);
  }

  if (!sfd) {
    sfd = server_socket (port, settings_addr, backlog, enable_ipv6 );
  }

  if (sfd < 0) {
    fprintf (stderr, "cannot open server socket at port %d: %m\n", port);
    exit (1);
  }

  if (!usfd) {
    usfd = server_socket (port, settings_addr, backlog, enable_ipv6 + 1);
  }

  if (usfd < 0) {
    fprintf (stderr, "cannot open udp port: %m\n");
    exit (1);
  }

  if (!tcp_buffers) {
    assert (init_listening_tcpv6_connection (sfd, &ct_rpc_server, &rpc_proxy_inbound, enable_ipv6) >= 0);
  } else {
    assert (init_listening_tcpv6_connection (sfd, &ct_tcp_rpc_server, &rpc_proxy_tcp, enable_ipv6) >= 0);
  }

  assert ((default_udp_socket = init_udp_port (usfd, port, &rpc_proxy_udp_server, &rpc_proxy_udp_server_methods, enable_ipv6)));

  get_utime_monotonic ();

  create_all_outbound_connections ();

  signal (SIGINT, sigint_handler);
  signal (SIGTERM, sigterm_handler);
  signal (SIGUSR1, sigusr1_handler);
  signal (SIGUSR2, sigusr2_handler);
  signal (SIGPIPE, SIG_IGN);
  if (daemonize) {
    signal (SIGHUP, sighup_handler);
  }

  for (i = 0; ; i++) {
    if (verbosity > 0 && !(i & 255)) {
      fprintf (stderr, "epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\n",
         active_connections, maxconn, NB_used, NB_alloc, NB_max);
    }
    epoll_work (57);
    if (precise_now > next_create_outbound) {
      create_all_outbound_connections ();
      next_create_outbound = precise_now + 0.05 + 0.02 * drand48();
    }
    if (now != prev_time) {
      prev_time = now;
      cron ();
    }
    if (pending_signals) {
      break;
    }
    if (need_reload_config) {
      do_reload_config (1);
    }
    if (binlog_mode_on) {
      flush_cbinlog (0);
    }
    if (quit_steps && !--quit_steps) break;
  }

  epoll_close (sfd);
  close(sfd);

  if (binlog_mode_on) {
    flush_cbinlog (2);
    flush_index ();
  }
  kprintf ("Terminated (pending_signals = 0x%llx).\n", pending_signals);

}
