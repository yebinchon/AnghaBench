#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct in_addr {int dummy; } ;
struct hostent {scalar_t__ h_addrtype; int h_length; scalar_t__ h_addr; int /*<<< orphan*/  h_addr_list; } ;
struct TYPE_6__ {int /*<<< orphan*/  port; struct in_addr target; } ;
struct TYPE_5__ {int /*<<< orphan*/  s_addr; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int NB_alloc ; 
 int NB_max ; 
 int NB_used ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIGPOLL ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int active_connections ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  backlog ; 
 int /*<<< orphan*/  buf ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  ct_watchcat_engine_server ; 
 scalar_t__ daemonize ; 
 TYPE_3__ default_ct ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 struct hostent* FUNC12 (char*) ; 
 char* hostname ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int maxconn ; 
 int /*<<< orphan*/  memcache_methods ; 
 int now ; 
 int port ; 
 int /*<<< orphan*/  queue_conn ; 
 int /*<<< orphan*/  queue_port ; 
 scalar_t__ quit_steps ; 
 int /*<<< orphan*/  FUNC16 () ; 
 scalar_t__ FUNC17 (int,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 TYPE_1__ settings_addr ; 
 scalar_t__ sfd ; 
 int /*<<< orphan*/  sighup_handler ; 
 int /*<<< orphan*/  sigint_handler ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int sigpoll_cnt ; 
 int /*<<< orphan*/  sigpoll_handler ; 
 int /*<<< orphan*/  sigterm_handler ; 
 int /*<<< orphan*/  sigusr1_handler ; 
 int /*<<< orphan*/  stderr ; 
 char* username ; 
 int verbosity ; 

void FUNC20 (void) {
  int i;
  int prev_time;

  FUNC13();
  FUNC15();

  prev_time = 0;

  if (!sfd) {
    sfd = FUNC17 (port, settings_addr, backlog, 0);
  }

  if (sfd < 0) {
    FUNC11 (stderr, "cannot open server socket at port %d: %m\n", port);
    FUNC10 (3);
  }

  if (verbosity) {
    FUNC11 (stderr, "created listening socket at %s:%d, fd=%ld\n", FUNC3 (settings_addr.s_addr, buf), port, sfd);
  }

  if (daemonize) {
    FUNC18();
  }

  if (FUNC1 (username) < 0) {
    FUNC11 (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    FUNC10 (1);
  }

  FUNC14 (sfd, &ct_watchcat_engine_server, &memcache_methods);

  struct hostent *h;
  if (!(h = FUNC12 (hostname)) || h->h_addrtype != AF_INET || h->h_length != 4 || !h->h_addr_list || !h->h_addr) {
    FUNC11 (stderr, "fatal: cannot resolve hostname %s: %m\n", hostname);
    FUNC10 (1);
  }

  default_ct.target = *(struct in_addr *) h->h_addr;
  default_ct.port = queue_port;
  queue_conn = FUNC5 (&default_ct, 0);

  FUNC4();

  FUNC19 (SIGINT, sigint_handler);
  FUNC19 (SIGTERM, sigterm_handler);
  FUNC19 (SIGUSR1, sigusr1_handler);
  FUNC19 (SIGPIPE, SIG_IGN);
  FUNC19 (SIGPOLL, sigpoll_handler);
  if (daemonize) {
    FUNC19 (SIGHUP, sighup_handler);
    FUNC16();
  }

  if (verbosity) {
    FUNC11 (stderr, "Server started\n");
  }

  for (i = 0; ; i++) {
    if (verbosity > 0 && !(i & 255)) {
      FUNC11 (stderr, "epoll_work(): %d out of %d connections, network bufers: %d used, %d out of %d allocated\n",
         active_connections, maxconn, NB_used, NB_alloc, NB_max);
    }
    FUNC9 (57);

    if (sigpoll_cnt > 0) {
      if (verbosity > 1) {
        FUNC11 (stderr, "after epoll_work(), sigpoll_cnt=%d\n", sigpoll_cnt);
      }
      sigpoll_cnt = 0;
    }

    if (now != prev_time) {
      prev_time = now;
      FUNC6();
    }

    if (&epoll_pre_event) {
      FUNC8();
    }

    if (quit_steps && !--quit_steps) break;
  }

  FUNC11 (stderr, "Quitting.\n");

  FUNC7 (sfd);
  FUNC0 (FUNC2 (sfd) >= 0);
}