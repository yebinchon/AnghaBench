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
struct connection {int pending_queries; } ;
struct TYPE_3__ {int /*<<< orphan*/  volume_id; } ;

/* Variables and functions */
 struct connection* Connections ; 
 int /*<<< orphan*/  NB_alloc ; 
 int /*<<< orphan*/  NB_max ; 
 int /*<<< orphan*/  NB_used ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIGPOLL ; 
 int /*<<< orphan*/  SIGRTMAX ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIG_IGN ; 
 TYPE_1__** Volumes ; 
 int /*<<< orphan*/  active_connections ; 
 int /*<<< orphan*/ * active_write_threads ; 
 int /*<<< orphan*/  append_to_binlog_time ; 
 int /*<<< orphan*/  binlog_disabled ; 
 int /*<<< orphan*/  booting_time ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  ct_http_server ; 
 int /*<<< orphan*/  ct_rpc_server ; 
 scalar_t__ daemonize ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ force_interrupt ; 
 int force_reopen_logs ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  http_methods ; 
 scalar_t__ http_sfd ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  maxconn ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int now ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  save_index_process ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ sfd ; 
 int /*<<< orphan*/  sighup_handler ; 
 int /*<<< orphan*/  sigint_handler ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ sigpoll_cnt ; 
 int /*<<< orphan*/  sigpoll_handler ; 
 int /*<<< orphan*/  sigrtmax_handler ; 
 int /*<<< orphan*/  sigterm_handler ; 
 int /*<<< orphan*/  sigusr1_handler ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  storage_rpc_server ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int,char*,scalar_t__,...) ; 
 int volumes ; 
 scalar_t__ FUNC19 () ; 

void FUNC20 (void) {
  int i;
  int prev_time;
  int old_reopen_logs = 0;

  FUNC7();
  FUNC9();

  prev_time = 0;

  if (daemonize) {
    FUNC13 ();
    FUNC12 ();
  }

/*
  for (i = 0; i < volumes; i++) {
    storage_open_binlogs (Volumes[i]);
  }
*/
  append_to_binlog_time = -FUNC11 ();
  if (!binlog_disabled) {
    for (i = 0; i < volumes; i++) {
      int r = FUNC16 (Volumes[i]);
      if (r < 0) {
        FUNC10 ("[v%lld] storage_append_to_binlog returns error code %d.\n", Volumes[i]->volume_id, r);
        FUNC5 (1);
      }
    }
  }
  append_to_binlog_time += FUNC11 ();

  struct connection *c = &Connections[0];
  c->pending_queries = 0x7fffffff;

  FUNC8 (sfd, &ct_rpc_server, &storage_rpc_server);

  if (http_sfd >= 0) {
    FUNC8 (http_sfd, &ct_http_server, &http_methods);
  }

  FUNC14 (SIGINT, sigint_handler);
  FUNC14 (SIGTERM, sigterm_handler);
  FUNC14 (SIGUSR1, sigusr1_handler);
  FUNC14 (SIGPIPE, SIG_IGN);
  FUNC14 (SIGIO, SIG_IGN);
  FUNC14 (SIGPOLL, sigpoll_handler);
  FUNC14 (SIGRTMAX, sigrtmax_handler);
  if (daemonize) {
    FUNC14 (SIGHUP, sighup_handler);
  }

  int quit_steps = 0;

  booting_time += FUNC11 ();

  for (i = 0; ; i++) {
    if (!(i & 255)) {
      FUNC18 (1, "epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\n",
	       active_connections, maxconn, NB_used, NB_alloc, NB_max);
    }
    FUNC4 (57);

    if (force_interrupt) {
      if (!save_index_process) {
        FUNC10 ("Waiting write threads terminates.\n");
        int k = 0;
        while (active_write_threads != NULL) {
          FUNC15 (1);
          k += FUNC19 ();
        }
        FUNC10 ("%d threads has been terminated.\n", k);
        FUNC10 ("Start sync.\n");
        FUNC17 ();
        FUNC10 ("Sync has been completed.\n");
      }
      FUNC5 (0);
    }

    if (force_reopen_logs != old_reopen_logs) {
      old_reopen_logs = force_reopen_logs;
      FUNC10 ("reopen_logs (), force_reopen_logs counter is equal to %d.\n", old_reopen_logs);
      FUNC12 ();
    }

    if (sigpoll_cnt > 0) {
      FUNC18 (2, "after epoll_work(), sigpoll_cnt=%d\n", sigpoll_cnt);
      sigpoll_cnt = 0;
    }

    /* !!! */
    FUNC0 ();
    FUNC19 ();
    FUNC6 ();

    if (now != prev_time) {
      prev_time = now;
      FUNC2();
    }
    if (quit_steps && !--quit_steps) break;
  }

  FUNC3 (sfd);
  FUNC1 (sfd);

}