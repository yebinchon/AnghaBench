#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sigaction {int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_handler; } ;
struct TYPE_6__ {scalar_t__ cron; scalar_t__ save_index; scalar_t__ sigusr1; scalar_t__ sighup; } ;
typedef  TYPE_1__ server_functions_t ;
typedef  int /*<<< orphan*/  sa ;
struct TYPE_7__ {scalar_t__ sfd; int /*<<< orphan*/  settings_addr; } ;
typedef  TYPE_2__ engine_t ;
typedef  int /*<<< orphan*/  conn_type_t ;
struct TYPE_8__ {scalar_t__ cron; scalar_t__ save_index; scalar_t__ sigusr1; scalar_t__ sighup; } ;

/* Variables and functions */
 int /*<<< orphan*/  Binlog ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIGPOLL ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  backlog ; 
 scalar_t__ binlog_disabled ; 
 scalar_t__ binlog_fd ; 
 scalar_t__ binlogname ; 
 scalar_t__ FUNC3 (char*) ; 
 scalar_t__ daemonize ; 
 int /*<<< orphan*/  epoll_pre_event ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 scalar_t__ log_readto_pos ; 
 int /*<<< orphan*/  FUNC10 (struct sigaction*,int /*<<< orphan*/ ,int) ; 
 char* port ; 
 int /*<<< orphan*/  read_new_events ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 TYPE_3__ sf ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sighup_handler ; 
 int /*<<< orphan*/  sigint_handler ; 
 int /*<<< orphan*/  sigterm_handler ; 
 scalar_t__ udp_enabled ; 
 char* username ; 

void FUNC17 (engine_t *E, server_functions_t *F, conn_type_t *listen_connection_type, void *listen_connection_extra) {
  if (F != NULL) {
    if (F->sighup) {
      sf.sighup = F->sighup;
    }
    if (F->sigusr1) {
      sf.sigusr1 = F->sigusr1;
    }
    if (F->save_index) {
      sf.save_index = F->save_index;
    }
    if (F->cron) {
      sf.cron = F->cron;
    }
  }
  
  FUNC5 ();
  FUNC8 ();
  if (udp_enabled) {
    FUNC7 (0);
  }
  
  if (daemonize) {
    FUNC13 ();
    FUNC11 ();
  }

  if (!E->sfd) {
    E->sfd = FUNC12 (port, E->settings_addr, backlog, 0);
  }

  if (E->sfd < 0) {
    FUNC9 ("cannot open server socket at port %d: %m\n", port);
    FUNC4 (1);
  }

  if (FUNC3 (username) < 0) {
    FUNC9 ("fatal: cannot change user to %s\n", username ? username : "(none)");
    FUNC4 (1);
  }

  if (binlogname && !binlog_disabled) {
    FUNC2 (FUNC1 (Binlog) == log_readto_pos);
  }

  FUNC6 (E->sfd, listen_connection_type, listen_connection_extra);
  if (udp_enabled) {
    FUNC0 (port, 0);
  }
  
  if (binlog_disabled && binlog_fd >= 0) {
    epoll_pre_event = read_new_events;
  }

  struct sigaction sa;
  FUNC10 (&sa, 0, sizeof (sa));
  sa.sa_handler = sigint_handler;
  FUNC16 (&sa.sa_mask);
  FUNC15 (&sa.sa_mask, SIGTERM); 
  FUNC14 (SIGINT, &sa, NULL);
  
  sa.sa_handler = sigterm_handler;
  FUNC16 (&sa.sa_mask);
  FUNC15 (&sa.sa_mask, SIGINT);
  FUNC14 (SIGTERM, &sa, NULL);
  
  sa.sa_handler = SIG_IGN;
  FUNC14 (SIGPIPE, &sa, NULL);
  FUNC14 (SIGPOLL, &sa, NULL);
  
  if (daemonize) {
    sa.sa_handler = sighup_handler;
    FUNC16 (&sa.sa_mask);
    FUNC14 (SIGHUP, &sa, NULL);
  }
}