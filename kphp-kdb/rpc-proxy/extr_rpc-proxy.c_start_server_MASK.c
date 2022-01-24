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
 int NB_alloc ; 
 int NB_max ; 
 int NB_used ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIGUSR2 ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int active_connections ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  backlog ; 
 scalar_t__ binlog_mode_on ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  ct_rpc_server ; 
 int /*<<< orphan*/  ct_tcp_rpc_server ; 
 scalar_t__ daemonize ; 
 int default_udp_socket ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 double FUNC6 () ; 
 scalar_t__ enable_ipv6 ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ FUNC15 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int FUNC18 (scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (char*,scalar_t__) ; 
 int maxconn ; 
 scalar_t__ need_reload_config ; 
 int now ; 
 scalar_t__ pending_signals ; 
 int port ; 
 double precise_now ; 
 scalar_t__ quit_steps ; 
 int /*<<< orphan*/  rpc_proxy_inbound ; 
 int /*<<< orphan*/  rpc_proxy_tcp ; 
 int /*<<< orphan*/  rpc_proxy_udp_server ; 
 int /*<<< orphan*/  rpc_proxy_udp_server_methods ; 
 scalar_t__ FUNC20 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  settings_addr ; 
 scalar_t__ sfd ; 
 int /*<<< orphan*/  sighup_handler ; 
 int /*<<< orphan*/  sigint_handler ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigterm_handler ; 
 int /*<<< orphan*/  sigusr1_handler ; 
 int /*<<< orphan*/  sigusr2_handler ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  tcp_buffers ; 
 char* username ; 
 scalar_t__ usfd ; 
 scalar_t__ verbosity ; 

void FUNC23 (void) { 
  //  struct sigaction sa;
  int i;
  int prev_time;
  double next_create_outbound = 0;

  FUNC14();
  FUNC17();
  FUNC16 (0);

  prev_time = 0;

  if (daemonize) {
    FUNC21 ();
  }

  if (FUNC1 (username) < 0) {
    FUNC12 (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    FUNC9 (1);
  }
  
  if (!sfd) {
    sfd = FUNC20 (port, settings_addr, backlog, enable_ipv6 );
  }

  if (sfd < 0) {
    FUNC12 (stderr, "cannot open server socket at port %d: %m\n", port);
    FUNC9 (1);
  }

  if (!usfd) {
    usfd = FUNC20 (port, settings_addr, backlog, enable_ipv6 + 1);
  }

  if (usfd < 0) {
    FUNC12 (stderr, "cannot open udp port: %m\n");
    FUNC9 (1);
  }

  if (!tcp_buffers) {
    FUNC0 (FUNC15 (sfd, &ct_rpc_server, &rpc_proxy_inbound, enable_ipv6) >= 0);
  } else {
    FUNC0 (FUNC15 (sfd, &ct_tcp_rpc_server, &rpc_proxy_tcp, enable_ipv6) >= 0);
  }
 
  FUNC0 ((default_udp_socket = FUNC18 (usfd, port, &rpc_proxy_udp_server, &rpc_proxy_udp_server_methods, enable_ipv6)));

  FUNC13 ();

  FUNC3 ();

  FUNC22 (SIGINT, sigint_handler);
  FUNC22 (SIGTERM, sigterm_handler);
  FUNC22 (SIGUSR1, sigusr1_handler);
  FUNC22 (SIGUSR2, sigusr2_handler);
  FUNC22 (SIGPIPE, SIG_IGN);
  if (daemonize) {
    FUNC22 (SIGHUP, sighup_handler);
  }

  for (i = 0; ; i++) {
    if (verbosity > 0 && !(i & 255)) {
      FUNC12 (stderr, "epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\n",
         active_connections, maxconn, NB_used, NB_alloc, NB_max);
    }
    FUNC8 (57);
    if (precise_now > next_create_outbound) {
      FUNC3 ();
      next_create_outbound = precise_now + 0.05 + 0.02 * FUNC6();
    }
    if (now != prev_time) {
      prev_time = now;
      FUNC4 ();
    }
    if (pending_signals) {
      break;
    }
    if (need_reload_config) {
      FUNC5 (1);
    }
    if (binlog_mode_on) {
      FUNC10 (0);
    }
    if (quit_steps && !--quit_steps) break;
  }
  
  FUNC7 (sfd);
  FUNC2(sfd);

  if (binlog_mode_on) {
    FUNC10 (2);
    FUNC11 ();
  }
  FUNC19 ("Terminated (pending_signals = 0x%llx).\n", pending_signals);

}